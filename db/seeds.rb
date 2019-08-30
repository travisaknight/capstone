User.create!(first_name: "Travis", last_name: "Knight", email: "travis@email.com", password: "password")
User.create!(first_name: "Chimbly", last_name: "Bimbly", email: "chimbly@email.com", password: "password")
User.create!(first_name: "Shaquille", last_name: "O'Neal", email: "shaquille@email.com", password: "password")

Category.create!(body_part: "Upper Body")
Category.create!(body_part: "Lower Body")
Category.create!(body_part: "Core")

Muscle.create!(name: "Chest")
Muscle.create!(name: "Back")
Muscle.create!(name: "Shoulders")
Muscle.create!(name: "Hamstrings")
Muscle.create!(name: "Quadriceps")
Muscle.create!(name: "Abs")

Exercise.create!(name: "Push-ups", category_id: 1, video_url: "http://www.youtube.com/embed/sBfW0tj9fqg")
Exercise.create!(name: "Pull-ups", category_id: 1, video_url: "http://www.youtube.com/embed/3Eq4VF5SudM")
Exercise.create!(name: "Lunges", category_id: 2, video_url: "http://www.youtube.com/embed/-P9HIPp1QG4")
Exercise.create!(name: "Deadlift", category_id: 2, video_url: "http://www.youtube.com/embed/T7-p5RBADIY")
Exercise.create!(name: "Pallof Press", category_id: 3, video_url: "http://www.youtube.com/embed/nFspBRHke4w")

Work.create!(exercise_id: 1, muscle_id: 1, category_id: 1)
Work.create!(exercise_id: 1, muscle_id: 3, category_id: 1)
Work.create!(exercise_id: 2, muscle_id: 2, category_id: 1)
Work.create!(exercise_id: 3, muscle_id: 4, category_id: 2)
Work.create!(exercise_id: 3, muscle_id: 5, category_id: 2)
Work.create!(exercise_id: 5, muscle_id: 6, category_id: 3)

Workout.create!(user_id: 1, exercise_id: 1, sets: 3, reps: 10, weight: "Body Weight")
Workout.create!(user_id: 1, exercise_id: 2, sets: 3, reps: 8, weight: "Body Weight")
Workout.create!(user_id: 1, exercise_id: 3, sets: 3, reps: 12, weight: "25")
Workout.create!(user_id: 1, exercise_id: 4, sets: 5, reps: 5, weight: "300")
Workout.create!(user_id: 1, exercise_id: 5, sets: 4, reps: 8, weight: "Red Band")

Complete.create!(workout_id: 1, exercise_id: 1, sets: 4, reps: 12, weight: "Body Weight")
Complete.create!(workout_id: 2, exercise_id: 2, sets: 3, reps: 5, weight: "Body Weight")
Complete.create!(workout_id: 3, exercise_id: 3, sets: 3, reps: 12, weight: "35")
Complete.create!(workout_id: 4, exercise_id: 4, sets: 5, reps: 12, weight: "340")
Complete.create!(workout_id: 5, exercise_id: 5, sets: 4, reps: 12, weight: "Purple Band")
