class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  # GET /bookings
  # GET /bookings.json
  def index
    @bookings = Booking.all
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
    @vehicle_listing = VehicleListing.find(params[:vehicle_listing])
    @booking.vehicle_listing = @vehicle_listing
    @booking.start_date = @vehicle_listing.start_date
    @booking.end_date = @vehicle_listing.end_date
    @amount = @vehicle_listing.price_cents
    @countries = ISO3166::Country.codes.map { |country_code| ISO3166::Country.new(country_code) }
  end

  # GET /bookings/1/edit
  def edit
    @countries = ISO3166::Country.codes.map { |country_code| ISO3166::Country.new(country_code) }
  end

  # POST /bookings
  # POST /bookings.json
  def create
    @countries = ISO3166::Country.codes.map { |country_code| ISO3166::Country.new(country_code) }
    @booking = Booking.new(booking_params)
    @booking.customer = current_user
    #validate start/end date etc
    if @booking.invalid?
      render :new
      return
    end

    @vehicle_listing = @booking.vehicle_listing
    # Amount in cents
    @amount = @vehicle_listing.price_cents

    #add user to stripe db
    customer = Stripe::Customer.create(
      :email => current_user.email,
      :source  => params[:stripeToken]
    )

    #charge user via stripe
    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => @vehicle_listing.full_address,
      :currency    => 'usd'
    )

    @booking.stripe_charge_id = charge.id

    
    respond_to do |format|
      if @booking.save
        format.html { redirect_to @booking, notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
    
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(:owner_id, :vehicle_listing_id, :start_date, :end_date, :comments, :cost_cents, :stripe_charge_id, :address, :city, :state, :country_code)
    end
end
