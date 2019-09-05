class CreateCompletes < ActiveRecord::Migration[6.0]
  def change
    create_table :completes do |t|
      t.integer :workout_id
      t.integer :exercise_id
      t.integer :sets
      t.integer :reps
      t.string :weight
      t.string :fake_created

      t.timestamps
    end
  end
end
