require 'test_helper'

class PaymentMethodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payment_method = payment_methods(:one)
  end

  test "should get index" do
    get payment_methods_url, as: :json
    assert_response :success
  end

  test "should create payment_method" do
    assert_difference('PaymentMethod.count') do
      post payment_methods_url, params: { payment_method: { card_type: @payment_method.card_type, last_four: @payment_method.last_four, payment_type: @payment_method.payment_type, user_id: @payment_method.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show payment_method" do
    get payment_method_url(@payment_method), as: :json
    assert_response :success
  end

  test "should update payment_method" do
    patch payment_method_url(@payment_method), params: { payment_method: { card_type: @payment_method.card_type, last_four: @payment_method.last_four, payment_type: @payment_method.payment_type, user_id: @payment_method.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy payment_method" do
    assert_difference('PaymentMethod.count', -1) do
      delete payment_method_url(@payment_method), as: :json
    end

    assert_response 204
  end
end
