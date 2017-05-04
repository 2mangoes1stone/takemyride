require 'test_helper'

class VehicleListingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle_listing = vehicle_listings(:one)
  end

  test "should get index" do
    get vehicle_listings_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_listing_url
    assert_response :success
  end

  test "should create vehicle_listing" do
    assert_difference('VehicleListing.count') do
      post vehicle_listings_url, params: { vehicle_listing: { address: @vehicle_listing.address, car_model_id: @vehicle_listing.car_model_id, city: @vehicle_listing.city, countey_code: @vehicle_listing.countey_code, description: @vehicle_listing.description, end_available_date: @vehicle_listing.end_available_date, instructions: @vehicle_listing.instructions, lat: @vehicle_listing.lat, long: @vehicle_listing.long, make_year: @vehicle_listing.make_year, max_passengers: @vehicle_listing.max_passengers, minimum_days_to_rent: @vehicle_listing.minimum_days_to_rent, price_per_day: @vehicle_listing.price_per_day, start_available_date: @vehicle_listing.start_available_date, state: @vehicle_listing.state, user_id: @vehicle_listing.user_id } }
    end

    assert_redirected_to vehicle_listing_url(VehicleListing.last)
  end

  test "should show vehicle_listing" do
    get vehicle_listing_url(@vehicle_listing)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_listing_url(@vehicle_listing)
    assert_response :success
  end

  test "should update vehicle_listing" do
    patch vehicle_listing_url(@vehicle_listing), params: { vehicle_listing: { address: @vehicle_listing.address, car_model_id: @vehicle_listing.car_model_id, city: @vehicle_listing.city, countey_code: @vehicle_listing.countey_code, description: @vehicle_listing.description, end_available_date: @vehicle_listing.end_available_date, instructions: @vehicle_listing.instructions, lat: @vehicle_listing.lat, long: @vehicle_listing.long, make_year: @vehicle_listing.make_year, max_passengers: @vehicle_listing.max_passengers, minimum_days_to_rent: @vehicle_listing.minimum_days_to_rent, price_per_day: @vehicle_listing.price_per_day, start_available_date: @vehicle_listing.start_available_date, state: @vehicle_listing.state, user_id: @vehicle_listing.user_id } }
    assert_redirected_to vehicle_listing_url(@vehicle_listing)
  end

  test "should destroy vehicle_listing" do
    assert_difference('VehicleListing.count', -1) do
      delete vehicle_listing_url(@vehicle_listing)
    end

    assert_redirected_to vehicle_listings_url
  end
end
