class CreateMuscleWorkeds < ActiveRecord::Migration[6.0]
  def change
    create_table :muscle_workeds do |t|
      t.integer :exercise_id
      t.integer :muscle_id
      t.integer :body_category_id

      t.timestamps
    end
  end
end
