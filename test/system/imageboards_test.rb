require "application_system_test_case"

class ImageboardsTest < ApplicationSystemTestCase
  setup do
    @imageboard = imageboards(:one)
  end

  test "visiting the index" do
    visit imageboards_url
    assert_selector "h1", text: "Imageboards"
  end

  test "creating a Imageboard" do
    visit imageboards_url
    click_on "New Imageboard"

    fill_in "Name", with: @imageboard.name
    click_on "Create Imageboard"

    assert_text "Imageboard was successfully created"
    click_on "Back"
  end

  test "updating a Imageboard" do
    visit imageboards_url
    click_on "Edit", match: :first

    fill_in "Name", with: @imageboard.name
    click_on "Update Imageboard"

    assert_text "Imageboard was successfully updated"
    click_on "Back"
  end

  test "destroying a Imageboard" do
    visit imageboards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Imageboard was successfully destroyed"
  end
end
