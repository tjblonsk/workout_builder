class CreateVideosWorkoutsTable < ActiveRecord::Migration
  def up
     create_table :videos_workouts, :id => false do |t|
      t.integer :video_id
      t.integer :workout_id
    end
  end

  def down
    drop_table :videos_workouts
  end
end
