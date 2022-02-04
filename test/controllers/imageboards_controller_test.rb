require 'test_helper'

class ImageboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @imageboard = imageboards(:one)
  end

  test "should get index" do
    get imageboards_url
    assert_response :success
  end

  test "should get new" do
    get new_imageboard_url
    assert_response :success
  end

  test "should create imageboard" do
    assert_difference('Imageboard.count') do
      post imageboards_url, params: { imageboard: { name: @imageboard.name } }
    end

    assert_redirected_to imageboard_url(Imageboard.last)
  end

  test "should show imageboard" do
    get imageboard_url(@imageboard)
    assert_response :success
  end

  test "should get edit" do
    get edit_imageboard_url(@imageboard)
    assert_response :success
  end

  test "should update imageboard" do
    patch imageboard_url(@imageboard), params: { imageboard: { name: @imageboard.name } }
    assert_redirected_to imageboard_url(@imageboard)
  end

  test "should destroy imageboard" do
    assert_difference('Imageboard.count', -1) do
      delete imageboard_url(@imageboard)
    end

    assert_redirected_to imageboards_url
  end
end
