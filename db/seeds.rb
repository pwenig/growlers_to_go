# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!(first_name: 'Paul', last_name: 'Jones' ,email: 'paul@paul.com', password: 'admin', admin: true)
User.create!(first_name: 'Joe', last_name: 'Joseph', address: '1035 Pearl St.', city: 'Boulder', state: 'CO', zip: '80304', email: 'joe@joe.com', password: 'test', admin: false)