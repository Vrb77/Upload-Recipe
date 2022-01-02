require "application_system_test_case"

class SnacksTest < ApplicationSystemTestCase
  setup do
    @snack = snacks(:one)
  end

  test "visiting the index" do
    visit snacks_url
    assert_selector "h1", text: "Snacks"
  end

  test "creating a Snack" do
    visit snacks_url
    click_on "New Snack"

    fill_in "Ingredient", with: @snack.ingredient
    fill_in "Method", with: @snack.method
    fill_in "Rname", with: @snack.rname
    click_on "Create Snack"

    assert_text "Snack was successfully created"
    click_on "Back"
  end

  test "updating a Snack" do
    visit snacks_url
    click_on "Edit", match: :first

    fill_in "Ingredient", with: @snack.ingredient
    fill_in "Method", with: @snack.method
    fill_in "Rname", with: @snack.rname
    click_on "Update Snack"

    assert_text "Snack was successfully updated"
    click_on "Back"
  end

  test "destroying a Snack" do
    visit snacks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Snack was successfully destroyed"
  end
end
