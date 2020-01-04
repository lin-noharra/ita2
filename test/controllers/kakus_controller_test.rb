require 'test_helper'

class KakusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kaku = kakus(:one)
  end

  test "should get index" do
    get kakus_url
    assert_response :success
  end

  test "should get new" do
    get new_kaku_url
    assert_response :success
  end

  test "should create kaku" do
    assert_difference('Kaku.count') do
      post kakus_url, params: { kaku: { body: @kaku.body, sonota: @kaku.sonota, url: @kaku.url, users_id: @kaku.users_id } }
    end

    assert_redirected_to kaku_url(Kaku.last)
  end

  test "should show kaku" do
    get kaku_url(@kaku)
    assert_response :success
  end

  test "should get edit" do
    get edit_kaku_url(@kaku)
    assert_response :success
  end

  test "should update kaku" do
    patch kaku_url(@kaku), params: { kaku: { body: @kaku.body, sonota: @kaku.sonota, url: @kaku.url, users_id: @kaku.users_id } }
    assert_redirected_to kaku_url(@kaku)
  end

  test "should destroy kaku" do
    assert_difference('Kaku.count', -1) do
      delete kaku_url(@kaku)
    end

    assert_redirected_to kakus_url
  end
end
