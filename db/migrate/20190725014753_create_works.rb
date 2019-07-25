class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.integer :exercise_id
      t.integer :muscle_id
      t.integer :category_id

      t.timestamps
    end
  end
end
