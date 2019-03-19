class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.integer :score
      t.integer :user_id
      t.integer :video_id

      t.timestamps
    end
  end
end
