class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.integer :user_id
      t.integer :exercise_id
      t.integer :sets
      t.integer :reps

      t.timestamps
    end
  end
end
