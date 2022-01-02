require "test_helper"

class SnacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @snack = snacks(:one)
  end

  test "should get index" do
    get snacks_url
    assert_response :success
  end

  test "should get new" do
    get new_snack_url
    assert_response :success
  end

  test "should create snack" do
    assert_difference('Snack.count') do
      post snacks_url, params: { snack: { ingredient: @snack.ingredient, method: @snack.method, rname: @snack.rname } }
    end

    assert_redirected_to snack_url(Snack.last)
  end

  test "should show snack" do
    get snack_url(@snack)
    assert_response :success
  end

  test "should get edit" do
    get edit_snack_url(@snack)
    assert_response :success
  end

  test "should update snack" do
    patch snack_url(@snack), params: { snack: { ingredient: @snack.ingredient, method: @snack.method, rname: @snack.rname } }
    assert_redirected_to snack_url(@snack)
  end

  test "should destroy snack" do
    assert_difference('Snack.count', -1) do
      delete snack_url(@snack)
    end

    assert_redirected_to snacks_url
  end
end
