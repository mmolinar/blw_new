require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "BLW en Espanol"
  end
  
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get videos" do
    get static_pages_videos_url
    assert_response :success
    assert_select "title", "Videos | #{@base_title}"
  end

  test "should get fotos" do
    get static_pages_fotos_url
    assert_response :success
    assert_select "title", "Fotos | #{@base_title}"
  end

  test "should get contacto" do
    get static_pages_contacto_url
    assert_response :success
    assert_select "title", "Contacto | #{@base_title}"
  end

end
