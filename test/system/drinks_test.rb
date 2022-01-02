require "application_system_test_case"

class DrinksTest < ApplicationSystemTestCase
  setup do
    @drink = drinks(:one)
  end

  test "visiting the index" do
    visit drinks_url
    assert_selector "h1", text: "Drinks"
  end

  test "creating a Drink" do
    visit drinks_url
    click_on "New Drink"

    fill_in "Ingredient", with: @drink.ingredient
    fill_in "Method", with: @drink.method
    fill_in "Rname", with: @drink.rname
    click_on "Create Drink"

    assert_text "Drink was successfully created"
    click_on "Back"
  end

  test "updating a Drink" do
    visit drinks_url
    click_on "Edit", match: :first

    fill_in "Ingredient", with: @drink.ingredient
    fill_in "Method", with: @drink.method
    fill_in "Rname", with: @drink.rname
    click_on "Update Drink"

    assert_text "Drink was successfully updated"
    click_on "Back"
  end

  test "destroying a Drink" do
    visit drinks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Drink was successfully destroyed"
  end
end
