class YoutubeParticipation < ApplicationRecord
  has_many :youtube_participant_info, foreign_key: "user_id"
  has_one :unite_live_info, foreign_key: "unite_live_id"
end
