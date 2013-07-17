class CreateTables < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password
      t.timestamps
    end

    create_table :lifts do |t|
      t.string :name
      t.timestamps
    end

    create_table :videos do |t|
      t.string :name
      t.string :description
      t.string :url
      t.integer :lift_id
      t.timestamps
    end

    create_table :users_videos, :id => false do |t|
      t.integer :user_id
      t.integer :video_id
    end
  end


  def down
    drop_table :users
    drop_table :lifts
    drop_table :videos
    drop_table :users_videos
  end
end