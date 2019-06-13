# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
    { username: 'Renata' }, 
    { username: 'Jen' },
    { username: 'Skyler' },
    { username: 'Lance' }
])

polls = Poll.create([
    { title: 'Favorite foods', user_id: 1 },
    { title: 'Favorite music', user_id: 2 }
])

questions = Question.create([
    { text: 'What is your favorite vegetable?', poll_id: 1 },
    { text: 'What is your favorite dessert?', poll_id: 1 },
    { text: 'What is your favorite instrument?', poll_id: 2 },
    { text: 'What is your favorite music genre?', poll_id: 2 }
])

answer_choices = AnswerChoice.create([
    { text: 'Broccoli', question_id: 1 },
    { text: 'Cauliflower', question_id: 1 },
    { text: 'Brussels sprouts', question_id: 1 },
    { text: 'Green beans', question_id: 1 },
    { text: 'Cupcakes', question_id: 2 },
    { text: 'Pie', question_id: 2 },
    { text: 'Cookies', question_id: 2 },
    { text: 'Ice cream', question_id: 2 },
    { text: 'Piano', question_id: 3 },
    { text: 'Strings', question_id: 3 },
    { text: 'Woodwinds', question_id: 3 },
    { text: 'Brass', question_id: 3 },
    { text: 'Classical', question_id: 4 },
    { text: 'Rock', question_id: 4 },
    { text: 'Pop', question_id: 4 },
    { text: 'R&B', question_id: 4 }
])

Response.create([
    {user_id: 1, answer_choice_id: 9 },
    {user_id: 1, answer_choice_id: 14 },
    {user_id: 2, answer_choice_id: 3 },
    {user_id: 2, answer_choice_id: 6 },
    {user_id: 3, answer_choice_id: 6 },
    {user_id: 4, answer_choice_id: 5 }
])