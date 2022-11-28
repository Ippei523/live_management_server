require "test_helper"

class YoutubeParticipantInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @youtube_participant_info = youtube_participant_infos(:one)
  end

  test "should get index" do
    get youtube_participant_infos_url, as: :json
    assert_response :success
  end

  test "should create youtube_participant_info" do
    assert_difference("YoutubeParticipantInfo.count") do
      post youtube_participant_infos_url, params: { youtube_participant_info: { memo: @youtube_participant_info.memo, participant_count: @youtube_participant_info.participant_count, traier_name: @youtube_participant_info.traier_name, youtube_name: @youtube_participant_info.youtube_name } }, as: :json
    end

    assert_response :created
  end

  test "should show youtube_participant_info" do
    get youtube_participant_info_url(@youtube_participant_info), as: :json
    assert_response :success
  end

  test "should update youtube_participant_info" do
    patch youtube_participant_info_url(@youtube_participant_info), params: { youtube_participant_info: { memo: @youtube_participant_info.memo, participant_count: @youtube_participant_info.participant_count, traier_name: @youtube_participant_info.traier_name, youtube_name: @youtube_participant_info.youtube_name } }, as: :json
    assert_response :success
  end

  test "should destroy youtube_participant_info" do
    assert_difference("YoutubeParticipantInfo.count", -1) do
      delete youtube_participant_info_url(@youtube_participant_info), as: :json
    end

    assert_response :no_content
  end
end
