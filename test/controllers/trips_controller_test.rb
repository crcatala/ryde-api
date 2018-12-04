require 'test_helper'

class TripsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip = trips(:one)
  end

  test "should get index" do
    get trips_url, as: :json
    assert_response :success
  end

  test "should create trip" do
    assert_difference('Trip.count') do
      post trips_url, params: { trip: { car_id: @trip.car_id, city: @trip.city, driver_id: @trip.driver_id, fare: @trip.fare, payment_method_id: @trip.payment_method_id, pickup_time: @trip.pickup_time, user_id: @trip.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show trip" do
    get trip_url(@trip), as: :json
    assert_response :success
  end

  test "should update trip" do
    patch trip_url(@trip), params: { trip: { car_id: @trip.car_id, city: @trip.city, driver_id: @trip.driver_id, fare: @trip.fare, payment_method_id: @trip.payment_method_id, pickup_time: @trip.pickup_time, user_id: @trip.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy trip" do
    assert_difference('Trip.count', -1) do
      delete trip_url(@trip), as: :json
    end

    assert_response 204
  end
end
