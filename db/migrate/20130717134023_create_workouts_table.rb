class CreateWorkoutsTable < ActiveRecord::Migration
  def up
    create_table :workouts do |t|
     t.string :name
     t.string :description
     t.integer :user_id
     t.timestamps
    end
  end

  def down
    drop_table :workouts
  end
end
