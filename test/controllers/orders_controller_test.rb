require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { buyer: @order.buyer, charge_identifier: @order.charge_identifier, delivery_address: @order.delivery_address, order_date: @order.order_date, order_value: @order.order_value, product_id: @order.product_id, product_price: @order.product_price, product_quantity: @order.product_quantity, seller_id: @order.seller_id } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { buyer: @order.buyer, charge_identifier: @order.charge_identifier, delivery_address: @order.delivery_address, order_date: @order.order_date, order_value: @order.order_value, product_id: @order.product_id, product_price: @order.product_price, product_quantity: @order.product_quantity, seller_id: @order.seller_id } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
