class YoutubeParticipantInfo < ApplicationRecord
  belongs_to :youtube_participation, :foreign_key => 'user_id'
end
