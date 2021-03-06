require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "BLW en Espanol"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | BLW en Espanol"
  end

  test "should get videos" do
    get static_pages_videos_url
    assert_response :success
    assert_select "title", "Videos | BLW en Espanol"
  end

  test "should get fotos" do
    get static_pages_fotos_url
    assert_response :success
    assert_select "title", "Fotos | BLW en Espanol"
  end

  test "should get contacto" do
    get static_pages_contacto_url
    assert_response :success
    assert_select "title", "Contacto | BLW en Espanol"
  end

end
