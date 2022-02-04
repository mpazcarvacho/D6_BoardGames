require "application_system_test_case"

class ImagepiecesTest < ApplicationSystemTestCase
  setup do
    @imagepiece = imagepieces(:one)
  end

  test "visiting the index" do
    visit imagepieces_url
    assert_selector "h1", text: "Imagepieces"
  end

  test "creating a Imagepiece" do
    visit imagepieces_url
    click_on "New Imagepiece"

    fill_in "Name", with: @imagepiece.name
    click_on "Create Imagepiece"

    assert_text "Imagepiece was successfully created"
    click_on "Back"
  end

  test "updating a Imagepiece" do
    visit imagepieces_url
    click_on "Edit", match: :first

    fill_in "Name", with: @imagepiece.name
    click_on "Update Imagepiece"

    assert_text "Imagepiece was successfully updated"
    click_on "Back"
  end

  test "destroying a Imagepiece" do
    visit imagepieces_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Imagepiece was successfully destroyed"
  end
end
