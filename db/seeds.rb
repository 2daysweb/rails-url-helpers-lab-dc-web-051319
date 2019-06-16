# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.destroy_all 

jim = Student.create(first_name: "Jimmy", last_name: "Fonda") 
sarah = Student.create(first_name: "Sarah", last_name: "Crystal")
zain = Student.create(first_name: "Zain", last_name: "Mukhtar")
