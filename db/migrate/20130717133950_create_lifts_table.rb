class CreateLiftsTable < ActiveRecord::Migration
  def up
      create_table :lifts do |t|
      t.string :name
      t.timestamps
    end
  end

  def down
    drop_table :lifts
  end
end
