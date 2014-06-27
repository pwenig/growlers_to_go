# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!(name: 'Paul', email: 'paul@paul.com', password: 'admin', admin: true)
User.create!(name: 'Joe', email: 'joe@joe.com', password: 'test', admin: false)