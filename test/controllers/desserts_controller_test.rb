require "test_helper"

class DessertsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dessert = desserts(:one)
  end

  test "should get index" do
    get desserts_url
    assert_response :success
  end

  test "should get new" do
    get new_dessert_url
    assert_response :success
  end

  test "should create dessert" do
    assert_difference('Dessert.count') do
      post desserts_url, params: { dessert: { ingredient: @dessert.ingredient, method: @dessert.method, rname: @dessert.rname } }
    end

    assert_redirected_to dessert_url(Dessert.last)
  end

  test "should show dessert" do
    get dessert_url(@dessert)
    assert_response :success
  end

  test "should get edit" do
    get edit_dessert_url(@dessert)
    assert_response :success
  end

  test "should update dessert" do
    patch dessert_url(@dessert), params: { dessert: { ingredient: @dessert.ingredient, method: @dessert.method, rname: @dessert.rname } }
    assert_redirected_to dessert_url(@dessert)
  end

  test "should destroy dessert" do
    assert_difference('Dessert.count', -1) do
      delete dessert_url(@dessert)
    end

    assert_redirected_to desserts_url
  end
end
