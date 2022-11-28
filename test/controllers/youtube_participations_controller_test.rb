require "test_helper"

class YoutubeParticipationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @youtube_participation = youtube_participations(:one)
  end

  test "should get index" do
    get youtube_participations_url, as: :json
    assert_response :success
  end

  test "should create youtube_participation" do
    assert_difference("YoutubeParticipation.count") do
      post youtube_participations_url, params: { youtube_participation: { unite_live_id: @youtube_participation.unite_live_id, user_id: @youtube_participation.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show youtube_participation" do
    get youtube_participation_url(@youtube_participation), as: :json
    assert_response :success
  end

  test "should update youtube_participation" do
    patch youtube_participation_url(@youtube_participation), params: { youtube_participation: { unite_live_id: @youtube_participation.unite_live_id, user_id: @youtube_participation.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy youtube_participation" do
    assert_difference("YoutubeParticipation.count", -1) do
      delete youtube_participation_url(@youtube_participation), as: :json
    end

    assert_response :no_content
  end
end
