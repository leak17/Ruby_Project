require "test_helper"

class FunctionalNavBarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @functional_nav_bar = functional_nav_bars(:one)
  end

  test "should get index" do
    get functional_nav_bars_url
    assert_response :success
  end

  test "should get new" do
    get new_functional_nav_bar_url
    assert_response :success
  end

  test "should create functional_nav_bar" do
    assert_difference("FunctionalNavBar.count") do
      post functional_nav_bars_url, params: { functional_nav_bar: { about: @functional_nav_bar.about, community: @functional_nav_bar.community, contact: @functional_nav_bar.contact, features: @functional_nav_bar.features, home: @functional_nav_bar.home, login_sigup: @functional_nav_bar.login_sigup } }
    end

    assert_redirected_to functional_nav_bar_url(FunctionalNavBar.last)
  end

  test "should show functional_nav_bar" do
    get functional_nav_bar_url(@functional_nav_bar)
    assert_response :success
  end

  test "should get edit" do
    get edit_functional_nav_bar_url(@functional_nav_bar)
    assert_response :success
  end

  test "should update functional_nav_bar" do
    patch functional_nav_bar_url(@functional_nav_bar), params: { functional_nav_bar: { about: @functional_nav_bar.about, community: @functional_nav_bar.community, contact: @functional_nav_bar.contact, features: @functional_nav_bar.features, home: @functional_nav_bar.home, login_sigup: @functional_nav_bar.login_sigup } }
    assert_redirected_to functional_nav_bar_url(@functional_nav_bar)
  end

  test "should destroy functional_nav_bar" do
    assert_difference("FunctionalNavBar.count", -1) do
      delete functional_nav_bar_url(@functional_nav_bar)
    end

    assert_redirected_to functional_nav_bars_url
  end
end
