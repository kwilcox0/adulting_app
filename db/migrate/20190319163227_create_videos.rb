class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.integer :length
      t.string :difficulty
      t.integer :points
      t.integer :instructor_id
      t.integer :category_id

      t.timestamps
    end
  end
end
