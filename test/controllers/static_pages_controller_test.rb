require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "LinksIn"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | LinksIn"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | LinksIn"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | LinksIn"
  end
end