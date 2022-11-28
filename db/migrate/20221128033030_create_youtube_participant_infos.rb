class CreateYoutubeParticipantInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :youtube_participant_infos do |t|
      t.string :youtube_name
      t.string :trainer_name
      t.integer :participant_count
      t.string :memo

      t.timestamps
    end
  end
end
