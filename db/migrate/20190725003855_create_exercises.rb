class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :category_id
      t.string :video_url

      t.timestamps
    end
  end
end
