require 'test_helper'

class HatusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hatu = hatus(:one)
  end

  test "should get index" do
    get hatus_url
    assert_response :success
  end

  test "should get new" do
    get new_hatu_url
    assert_response :success
  end

  test "should create hatu" do
    assert_difference('Hatu.count') do
      post hatus_url, params: { hatu: { body: @hatu.body, sonota: @hatu.sonota, url: @hatu.url, user_id: @hatu.user_id } }
    end

    assert_redirected_to hatu_url(Hatu.last)
  end

  test "should show hatu" do
    get hatu_url(@hatu)
    assert_response :success
  end

  test "should get edit" do
    get edit_hatu_url(@hatu)
    assert_response :success
  end

  test "should update hatu" do
    patch hatu_url(@hatu), params: { hatu: { body: @hatu.body, sonota: @hatu.sonota, url: @hatu.url, user_id: @hatu.user_id } }
    assert_redirected_to hatu_url(@hatu)
  end

  test "should destroy hatu" do
    assert_difference('Hatu.count', -1) do
      delete hatu_url(@hatu)
    end

    assert_redirected_to hatus_url
  end
end
