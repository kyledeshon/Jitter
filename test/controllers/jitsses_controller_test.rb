require "test_helper"

class JitssesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jitss = jitsses(:one)
  end

  test "should get index" do
    get jitsses_url
    assert_response :success
  end

  test "should get new" do
    get new_jitss_url
    assert_response :success
  end

  test "should create jitss" do
    assert_difference("Jitss.count") do
      post jitsses_url, params: { jitss: { content: @jitss.content, user_id: @jitss.user_id } }
    end

    assert_redirected_to jitss_url(Jitss.last)
  end

  test "should show jitss" do
    get jitss_url(@jitss)
    assert_response :success
  end

  test "should get edit" do
    get edit_jitss_url(@jitss)
    assert_response :success
  end

  test "should update jitss" do
    patch jitss_url(@jitss), params: { jitss: { content: @jitss.content, user_id: @jitss.user_id } }
    assert_redirected_to jitss_url(@jitss)
  end

  test "should destroy jitss" do
    assert_difference("Jitss.count", -1) do
      delete jitss_url(@jitss)
    end

    assert_redirected_to jitsses_url
  end
end
