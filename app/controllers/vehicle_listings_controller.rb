class VehicleListingsController < ApplicationController
  before_action :set_vehicle_listing, only: [:show, :edit, :update, :destroy]
  # beforxe_action :set_picture, only: [:new]

  # GET /vehicle_listings
  # GET /vehicle_listings.json
  def index
    @vehicle_listings = VehicleListing.all
  end

  # GET /vehicle_listings/1
  # GET /vehicle_listings/1.json
  def show
  end

  # GET /vehicle_listings/new
  def new
    @vehicle_listing = VehicleListing.new
    @cars = CarModel.all
    @image = Picture.new
    
  end

  # GET /vehicle_listings/1/edit
  def edit
  end

  # POST /vehicle_listings
  # POST /vehicle_listings.json
  def create
    @vehicle_listing = VehicleListing.new(vehicle_listing_params)
    @vehicle_listing.owner = current_user

    respond_to do |format|
      if @vehicle_listing.save
        format.html { redirect_to @vehicle_listing, notice: 'Vehicle listing was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle_listing }
      else
        format.html { render :new }
        format.json { render json: @vehicle_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicle_listings/1
  # PATCH/PUT /vehicle_listings/1.json
  def update
    respond_to do |format|
      if @vehicle_listing.update(vehicle_listing_params)
        format.html { redirect_to @vehicle_listing, notice: 'Vehicle listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle_listing }
      else
        format.html { render :edit }
        format.json { render json: @vehicle_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_listings/1
  # DELETE /vehicle_listings/1.json
  def destroy
    @vehicle_listing.destroy
    respond_to do |format|
      format.html { redirect_to vehicle_listings_url, notice: 'Vehicle listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_listing
      @vehicle_listing = VehicleListing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_listing_params
      params.require(:vehicle_listing).permit(:car_model_id, :user_id, :make_year, :description, :max_passengers, :start_available_date, :end_available_date, :minimum_days_to_rent, :price_per_day, :address, :city, :state, :countey_code, :lat, :long, :instructions)
    end

    # def set_picture
    #   @image = Image.find(params[:id])
    # end

  # Protected
  #   def vehicle_listing_params
  #     params.require(:contact).permit(pictures_attributes: [:id, :vehicle_listing_id, :pictures])
  #   end
end
