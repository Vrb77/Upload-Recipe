require "application_system_test_case"

class SaladsTest < ApplicationSystemTestCase
  setup do
    @salad = salads(:one)
  end

  test "visiting the index" do
    visit salads_url
    assert_selector "h1", text: "Salads"
  end

  test "creating a Salad" do
    visit salads_url
    click_on "New Salad"

    fill_in "Ingredient", with: @salad.ingredient
    fill_in "Method", with: @salad.method
    fill_in "Rname", with: @salad.rname
    click_on "Create Salad"

    assert_text "Salad was successfully created"
    click_on "Back"
  end

  test "updating a Salad" do
    visit salads_url
    click_on "Edit", match: :first

    fill_in "Ingredient", with: @salad.ingredient
    fill_in "Method", with: @salad.method
    fill_in "Rname", with: @salad.rname
    click_on "Update Salad"

    assert_text "Salad was successfully updated"
    click_on "Back"
  end

  test "destroying a Salad" do
    visit salads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Salad was successfully destroyed"
  end
end
