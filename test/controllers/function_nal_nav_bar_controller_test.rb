require "test_helper"

class FunctionNalNavBarControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get function_nal_nav_bar_home_url
    assert_response :success
  end

  test "should get about" do
    get function_nal_nav_bar_about_url
    assert_response :success
  end

  test "should get community" do
    get function_nal_nav_bar_community_url
    assert_response :success
  end

  test "should get contact" do
    get function_nal_nav_bar_contact_url
    assert_response :success
  end

  test "should get features" do
    get function_nal_nav_bar_features_url
    assert_response :success
  end

  test "should get login/sign_up" do
    get function_nal_nav_bar_login/sign_up_url
    assert_response :success
  end
end
