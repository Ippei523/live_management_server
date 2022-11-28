class CreateUniteLiveInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :unite_live_info do |t|
      t.string :title

      t.timestamps
    end
  end
end
