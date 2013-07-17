class CreateVideosTable < ActiveRecord::Migration
  def up
     create_table :videos do |t|
      t.string :name
      t.string :description
      t.string :url
      t.integer :lift_id
      t.timestamps
    end
  end

  def down
    drop_table :videos
  end
end
