require 'test_helper'

class SiteControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get site_home_url
    assert_response :success
  end

  test "should get userprofile" do
    get site_userprofile_url
    assert_response :success
  end

  test "should get adminprofile" do
    get site_adminprofile_url
    assert_response :success
  end

  test "should get bookingpage" do
    get site_bookingpage_url
    assert_response :success
  end

  test "should get aboutus" do
    get site_aboutus_url
    assert_response :success
  end

  test "should get contactus" do
    get site_contactus_url
    assert_response :success
  end

end
