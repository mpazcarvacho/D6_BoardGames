require "application_system_test_case"

class BoardgamesTest < ApplicationSystemTestCase
  setup do
    @boardgame = boardgames(:one)
  end

  test "visiting the index" do
    visit boardgames_url
    assert_selector "h1", text: "Boardgames"
  end

  test "creating a Boardgame" do
    visit boardgames_url
    click_on "New Boardgame"

    fill_in "Ages", with: @boardgame.ages
    fill_in "Description", with: @boardgame.description
    fill_in "Max players", with: @boardgame.max_players
    fill_in "Min players", with: @boardgame.min_players
    fill_in "Name", with: @boardgame.name
    click_on "Create Boardgame"

    assert_text "Boardgame was successfully created"
    click_on "Back"
  end

  test "updating a Boardgame" do
    visit boardgames_url
    click_on "Edit", match: :first

    fill_in "Ages", with: @boardgame.ages
    fill_in "Description", with: @boardgame.description
    fill_in "Max players", with: @boardgame.max_players
    fill_in "Min players", with: @boardgame.min_players
    fill_in "Name", with: @boardgame.name
    click_on "Update Boardgame"

    assert_text "Boardgame was successfully updated"
    click_on "Back"
  end

  test "destroying a Boardgame" do
    visit boardgames_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Boardgame was successfully destroyed"
  end
end
