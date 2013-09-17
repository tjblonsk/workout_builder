class CreateTables < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :username
      t.references :videos
      t.references :lifts
      t.references :workouts
      t.timestamps
    end

    create_table :lifts do |t|
      t.string :name
      t.references :user
      t.timestamps
    end

    create_table :videos do |t|
      t.string :name
      t.string :description
      t.string :url
      t.references :lift
      t.references :user
      t.timestamps
    end

    create_table :workouts do |t|
     t.string :name
     t.string :description
     t.references :user
     t.timestamps
    end

    create_table :videos_workouts, :id => false do |t|
      t.integer :video_id
      t.integer :workout_id
    end
  end


  def down
    drop_table :users
    drop_table :lifts
    drop_table :videos
    drop_table :workouts
    drop_table :users_videos
    drop_table :videos_workouts
  end
end


