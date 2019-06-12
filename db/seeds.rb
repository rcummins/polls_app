# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
    { username: 'Renata' }, 
    { username: 'Jen' }
])

polls = Poll.create([
    { title: 'Favorite foods', user_id: users.first.id },
    { title: 'Favorite music', user_id: users.last.id }
])

questions = Question.create([
    { text: 'What is your favorite vegetable?', poll_id: polls.first.id },
    { text: 'What is your favorite dessert?', poll_id: polls.first.id },
    { text: 'What is your favorite instrument?', poll_id: polls.last.id },
    { text: 'What is your favorite music genre?', poll_id: polls.last.id }
])

answer_choices = AnswerChoice.create([
    { text: 'Broccoli', question_id: questions.first.id },
    { text: 'Cauliflower', question_id: questions.first.id },
    { text: 'Brussels sprouts', question_id: questions.first.id },
    { text: 'Green beans', question_id: questions.first.id },
    { text: 'Cupcakes', question_id: questions[1].id },
    { text: 'Pie', question_id: questions[1].id },
    { text: 'Cookies', question_id: questions[1].id },
    { text: 'Ice cream', question_id: questions[1].id },
    { text: 'Piano', question_id: questions[2].id },
    { text: 'Strings', question_id: questions[2].id },
    { text: 'Woodwinds', question_id: questions[2].id },
    { text: 'Brass', question_id: questions[2].id },
    { text: 'Classical', question_id: questions.last.id },
    { text: 'Rock', question_id: questions.last.id },
    { text: 'Pop', question_id: questions.last.id },
    { text: 'R&B', question_id: questions.last.id }
])

Response.create([
    {user_id: users.first.id, answer_choice_id: answer_choices[8].id },
    {user_id: users.first.id, answer_choice_id: answer_choices[13].id },
    {user_id: users.last.id, answer_choice_id: answer_choices[2].id },
    {user_id: users.last.id, answer_choice_id: answer_choices[5].id }
])