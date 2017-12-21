require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Find all your awesome lyrics here"
  end

  test "should get root" do
    get root_url
    assert_response :success
  end

  test "should get Home" do
    get static_pages_Home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get About" do
    get static_pages_About_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end
end
