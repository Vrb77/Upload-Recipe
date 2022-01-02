require "test_helper"

class SaladsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @salad = salads(:one)
  end

  test "should get index" do
    get salads_url
    assert_response :success
  end

  test "should get new" do
    get new_salad_url
    assert_response :success
  end

  test "should create salad" do
    assert_difference('Salad.count') do
      post salads_url, params: { salad: { ingredient: @salad.ingredient, method: @salad.method, rname: @salad.rname } }
    end

    assert_redirected_to salad_url(Salad.last)
  end

  test "should show salad" do
    get salad_url(@salad)
    assert_response :success
  end

  test "should get edit" do
    get edit_salad_url(@salad)
    assert_response :success
  end

  test "should update salad" do
    patch salad_url(@salad), params: { salad: { ingredient: @salad.ingredient, method: @salad.method, rname: @salad.rname } }
    assert_redirected_to salad_url(@salad)
  end

  test "should destroy salad" do
    assert_difference('Salad.count', -1) do
      delete salad_url(@salad)
    end

    assert_redirected_to salads_url
  end
end
