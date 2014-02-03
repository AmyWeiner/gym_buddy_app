# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongemaile the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = []
users << User.create(name: 'Amy', email: 'amy@gmail.com', password: "123", password_confirmation: "123")
users << User.create(name: 'Sophie', email: 'sophie@gmail.com', password: "234", password_confirmation: "234")
users << User.create(name: 'Ben', email: 'ben@gmail.com', password: "345", password_confirmation: "345")
users << User.create(name: 'Jon', email: 'jon@gmail.com', password: "456", password_confirmation: "456")
users << User.create(name: 'Naomi', email: 'naomi@aol.com', password: "567", password_confirmation: "567")
users << User.create(name: 'George', email: 'george@aol.com', password: "678", password_confirmation: "678")
users << User.create(name: 'Matt', email: 'matt@hotmail.com', password: "789", password_confirmation: "789")
users << User.create(name: 'Ron', email: 'ron@hotmail.com', password: "890", password_confirmation: "890")