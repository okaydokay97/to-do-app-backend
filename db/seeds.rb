# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Todo.delete_all

u1 = User.create(username: "Jim")
u2 = User.create(username: "Rubens")
u3 = User.create(username: "Todd")
u4 = User.create(username: "Frank")
u5 = User.create(username: "Jen")

td1 = Todo.create(title: "groceries", content:"I need groceries", importance: 5, user: u2)
td2 = Todo.create(title: "foo", content:"bar", importance: 1, user: u2)
td3 = Todo.create(title: "test", content:"testing", importance: 5, user: u1)
td4 = Todo.create(title: "gym", content:"I need to work out", importance: 3, user: u5)
td5 = Todo.create(title: "groceries", content:"I need groceries", importance: 2, user: u3)