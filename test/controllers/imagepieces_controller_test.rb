require 'test_helper'

class ImagepiecesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @imagepiece = imagepieces(:one)
  end

  test "should get index" do
    get imagepieces_url
    assert_response :success
  end

  test "should get new" do
    get new_imagepiece_url
    assert_response :success
  end

  test "should create imagepiece" do
    assert_difference('Imagepiece.count') do
      post imagepieces_url, params: { imagepiece: { name: @imagepiece.name } }
    end

    assert_redirected_to imagepiece_url(Imagepiece.last)
  end

  test "should show imagepiece" do
    get imagepiece_url(@imagepiece)
    assert_response :success
  end

  test "should get edit" do
    get edit_imagepiece_url(@imagepiece)
    assert_response :success
  end

  test "should update imagepiece" do
    patch imagepiece_url(@imagepiece), params: { imagepiece: { name: @imagepiece.name } }
    assert_redirected_to imagepiece_url(@imagepiece)
  end

  test "should destroy imagepiece" do
    assert_difference('Imagepiece.count', -1) do
      delete imagepiece_url(@imagepiece)
    end

    assert_redirected_to imagepieces_url
  end
end
