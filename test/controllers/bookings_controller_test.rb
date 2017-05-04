require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booking = bookings(:one)
  end

  test "should get index" do
    get bookings_url
    assert_response :success
  end

  test "should get new" do
    get new_booking_url
    assert_response :success
  end

  test "should create booking" do
    assert_difference('Booking.count') do
      post bookings_url, params: { booking: { address: @booking.address, city: @booking.city, comments: @booking.comments, cost_cents: @booking.cost_cents, country_code: @booking.country_code, end_rental_date: @booking.end_rental_date, owner_id: @booking.owner_id, start_rental_date: @booking.start_rental_date, state: @booking.state, stripe_charge_id: @booking.stripe_charge_id, vehicle_id: @booking.vehicle_id } }
    end

    assert_redirected_to booking_url(Booking.last)
  end

  test "should show booking" do
    get booking_url(@booking)
    assert_response :success
  end

  test "should get edit" do
    get edit_booking_url(@booking)
    assert_response :success
  end

  test "should update booking" do
    patch booking_url(@booking), params: { booking: { address: @booking.address, city: @booking.city, comments: @booking.comments, cost_cents: @booking.cost_cents, country_code: @booking.country_code, end_rental_date: @booking.end_rental_date, owner_id: @booking.owner_id, start_rental_date: @booking.start_rental_date, state: @booking.state, stripe_charge_id: @booking.stripe_charge_id, vehicle_id: @booking.vehicle_id } }
    assert_redirected_to booking_url(@booking)
  end

  test "should destroy booking" do
    assert_difference('Booking.count', -1) do
      delete booking_url(@booking)
    end

    assert_redirected_to bookings_url
  end
end
