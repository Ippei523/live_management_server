class UniteLiveInfo < ApplicationRecord
  belongs_to :youtube_participation, :foreign_key => 'unite_live_id'
end
