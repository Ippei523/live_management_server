class CreateYoutubeParticipantInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :youtube_participant_info do |t|
      t.string :youtube_name
      t.string :traier_name
      t.integer :participant_count
      t.string :memo

      t.timestamps
    end
  end
end
