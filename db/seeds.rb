# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# categories = Category.create([{name: 'Elderly care'}, {name: 'Environmental'}, {name: 'Animal care'}, {name: 'Education'}, 
# 	{name: 'Feed the Hungry/Homeless'}, {name: 'Community Enhancement'}])

c1 = Category.create(name: 'Elderly care')
c2 = Category.create(name: 'Environmental')
c3 = Category.create(name: 'Animal care')
c4 = Category.create(name: 'Education')
c5 = Category.create(name: 'Feed the Hungry/Homeless')
c6 = Category.create(name: 'Community Enhancement')

u1 = User.create(name: 'David', email: 'david@gmail.com', password:'123456', password_confirmation:'123456', location: 'Miami, FL', age: '28', occupation: 'senior developer')
u2 = User.create(name: 'Jorge', email: 'jorge@gmail.com', password:'qwerty', password_confirmation:'qwerty', location: 'Wynwood, FL', age: '26', occupation: 'junior developer')
u3 = User.create(name: 'Alex', email: 'alex@gmail.com', password:'tyuiop', password_confirmation:'tyuiop', location: 'Miami Lakes, FL', age: '27', occupation: 'entry level developer')
u4 = User.create(name: 'Leia', email: 'leia@gmail.com', password:'asdfgh', password_confirmation:'asdfgh' , location: 'Miami Lakes, FL', age: '12', occupation: 'artist')
u5 = User.create(name: 'Peter', email: 'peter@gmail.com', password:'zxcvbn', password_confirmation:'zxcvbn',location: 'Miami, FL', age: '34', occupation: 'tennis player')
u6 = User.create(name: 'Lily', email: 'lily@gmail.com', password: 'vbnmasd', password_confirmation: 'vbnmasd', location: 'Fort Lauderdale, FL', age: '43', occupation: 'chemist')

Event.create(name: 'Senior Pitch Day!', description: 'text1 - Senior Pitch Day', user_id: u1.id, date: '2017-05-20' , location: 'Miami, FL',category_id: c1.id)
Event.create(name: 'Tree Planting Day!', description: 'text2 - Tree Planting Day', user_id: u2.id, date: '2017-06-20', location: 'Fort Lauderdale, FL' ,category_id: c2.id)
Event.create(name: 'Animal Shelter Help Day!', description: 'text - Animal Shelter Help Day', user_id: u3.id , date:'2017-07-20', location: 'Wynwood, FL' ,category_id: c3.id)
Event.create(name: 'Education Day!', description: 'text - Education Day', user_id: u4.id , date: '2017-08-20' , location: 'Sunrise, FL' ,category_id: c4.id)
Event.create(name: 'Feed the Hungry!', description: 'text - Feed the Hungry', user_id: u5.id , date: '2017-09-20', location: 'Miami Lakes, FL' ,category_id: c5.id)
Event.create(name: 'Community Enhancement!', description: 'text - Community Enhancement', user_id: u6.id, date: '2017-10-20', location: 'Homestead, FL' ,category_id: c6.id)




