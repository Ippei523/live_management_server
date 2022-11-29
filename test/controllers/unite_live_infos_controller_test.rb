require "test_helper"

class UniteLiveInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unite_live_info = unite_live_infos(:one)
  end

  test "should get index" do
    get unite_live_infos_url, as: :json
    assert_response :success
  end

  test "should create unite_live_info" do
    assert_difference("UniteLiveInfo.count") do
      post unite_live_infos_url, params: { unite_live_info: { title: @unite_live_info.title } }, as: :json
    end

    assert_response :created
  end

  test "should show unite_live_info" do
    get unite_live_info_url(@unite_live_info), as: :json
    assert_response :success
  end

  test "should update unite_live_info" do
    patch unite_live_info_url(@unite_live_info), params: { unite_live_info: { title: @unite_live_info.title } }, as: :json
    assert_response :success
  end

  test "should destroy unite_live_info" do
    assert_difference("UniteLiveInfo.count", -1) do
      delete unite_live_info_url(@unite_live_info), as: :json
    end

    assert_response :no_content
  end
end
