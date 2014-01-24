# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



abe = Customer.new(first_name: "abe", last_name: "Schonfeld")
abe.addresses.build(postal_code: 12345, city: "new york", street: "fake street")
abe.addresses.build(postal_code: 88888, city: "los angelos", street: "other fake street")
abe.save

homer = Customer.new(first_name: "Homer", last_name: "Simpson")
homer.addresses.build(postal_code: 55555, city: "springfield", street: "evergreen terrace")
homer.save