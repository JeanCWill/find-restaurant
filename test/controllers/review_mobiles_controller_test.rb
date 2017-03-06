require 'test_helper'

class ReviewMobilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @review_mobile = review_mobiles(:one)
  end

  test "should get index" do
    get review_mobiles_url
    assert_response :success
  end

  test "should get new" do
    get new_review_mobile_url
    assert_response :success
  end

  test "should create review_mobile" do
    assert_difference('ReviewMobile.count') do
      post review_mobiles_url, params: { review_mobile: {  } }
    end

    assert_redirected_to review_mobile_url(ReviewMobile.last)
  end

  test "should show review_mobile" do
    get review_mobile_url(@review_mobile)
    assert_response :success
  end

  test "should get edit" do
    get edit_review_mobile_url(@review_mobile)
    assert_response :success
  end

  test "should update review_mobile" do
    patch review_mobile_url(@review_mobile), params: { review_mobile: {  } }
    assert_redirected_to review_mobile_url(@review_mobile)
  end

  test "should destroy review_mobile" do
    assert_difference('ReviewMobile.count', -1) do
      delete review_mobile_url(@review_mobile)
    end

    assert_redirected_to review_mobiles_url
  end
end
