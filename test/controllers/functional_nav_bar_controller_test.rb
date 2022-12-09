require "test_helper"

class FunctionalNavBarControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get functional_nav_bar_home_url
    assert_response :success
  end

  test "should get about" do
    get functional_nav_bar_about_url
    assert_response :success
  end

  test "should get community" do
    get functional_nav_bar_community_url
    assert_response :success
  end

  test "should get contact" do
    get functional_nav_bar_contact_url
    assert_response :success
  end

  test "should get features" do
    get functional_nav_bar_features_url
    assert_response :success
  end

  test "should get login_signup" do
    get functional_nav_bar_login_signup_url
    assert_response :success
  end
end
