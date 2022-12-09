require "application_system_test_case"

class FunctionalNavBarsTest < ApplicationSystemTestCase
  setup do
    @functional_nav_bar = functional_nav_bars(:one)
  end

  test "visiting the index" do
    visit functional_nav_bars_url
    assert_selector "h1", text: "Functional nav bars"
  end

  test "should create functional nav bar" do
    visit functional_nav_bars_url
    click_on "New functional nav bar"

    fill_in "About", with: @functional_nav_bar.about
    fill_in "Community", with: @functional_nav_bar.community
    fill_in "Contact", with: @functional_nav_bar.contact
    fill_in "Features", with: @functional_nav_bar.features
    fill_in "Home", with: @functional_nav_bar.home
    fill_in "Login sigup", with: @functional_nav_bar.login_sigup
    click_on "Create Functional nav bar"

    assert_text "Functional nav bar was successfully created"
    click_on "Back"
  end

  test "should update Functional nav bar" do
    visit functional_nav_bar_url(@functional_nav_bar)
    click_on "Edit this functional nav bar", match: :first

    fill_in "About", with: @functional_nav_bar.about
    fill_in "Community", with: @functional_nav_bar.community
    fill_in "Contact", with: @functional_nav_bar.contact
    fill_in "Features", with: @functional_nav_bar.features
    fill_in "Home", with: @functional_nav_bar.home
    fill_in "Login sigup", with: @functional_nav_bar.login_sigup
    click_on "Update Functional nav bar"

    assert_text "Functional nav bar was successfully updated"
    click_on "Back"
  end

  test "should destroy Functional nav bar" do
    visit functional_nav_bar_url(@functional_nav_bar)
    click_on "Destroy this functional nav bar", match: :first

    assert_text "Functional nav bar was successfully destroyed"
  end
end
