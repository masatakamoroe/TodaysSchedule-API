# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: 'Sony', email: 'sony@sample.com')
User.create(name: 'Fredo', email: 'fred@sample.com')
User.create(name: 'Tom', email: 'tom@sample.com')
User.create(name: 'Michael', email: 'michael@sample.com')
User.create(name: 'Connie', email: 'connie@sample.com')

Calendar.create(title: 'Sonytitel', date:'2020.0101', user_id: 1)
Calendar.create(title: 'Sonytitel', date:'2020.0101', user_id: 2)
Calendar.create(title: 'Sonytitel', date:'2020.0101', user_id: 3)
Calendar.create(title: 'Sonytitel', date:'2020.0101', user_id: 4)
