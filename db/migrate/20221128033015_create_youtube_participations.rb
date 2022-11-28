class CreateYoutubeParticipations < ActiveRecord::Migration[7.0]
  def change
    create_table :youtube_participations do |t|
      t.integer :unite_live_id
      t.integer :user_id

      t.timestamps
    end
  end
end
