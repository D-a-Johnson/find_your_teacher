# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Category.destroy_all
Lesson.destroy_all
Review.destroy_all

User.create!(
    first_name: "Peter",
    last_name: "Hsieh",
    email: "mcdonalds@everyday.omg",
    phone_number: "075-342-5185",
    remote_avatar_url: "https://avatars1.githubusercontent.com/u/43994166?s=460&v=4",
    username: "McDonalds",
    password:"123456"

  )
User.create!(
    first_name: "Alexei",
    last_name: "Moskowvich",
    email: "cocoichi@4ever.com",
    phone_number: "420-6969-6969",
    remote_avatar_url: "https://avatars1.githubusercontent.com/u/42726237?s=400&v=4",
    username: "Russian_Spy",
    password:"123456"
  )

User.create!(
    first_name: "Pao",
    last_name: "Eawsivigoon",
    email: "emoji-specialist@art.net",
    phone_number: "432-659-1953",
    remote_avatar_url: "https://avatars1.githubusercontent.com/u/46549190?s=400&v=4",
    username: "Pao",
    password:"123456"
  )

Category.create(
    name: "Language - English",
  )
Category.create(
  name: "Language - Japanese"
  )
Category.create(
  name: "Language - Other"
  )
Category.create(
  name: "Music - Guitar"
  )
Category.create(
  name: "Music - Bass"
  )
Category.create(
  name: "Music - Drums"
  )
Category.create(
  name: "Music - Piano"
  )
Category.create(
  name: "Programming"
  )
Category.create(
  name: "Painting"
  )
Category.create(
  name: "Photography"
  )
Category.create(
  name: "Writing"
  )
Category.create(
  name: "Cooking"
  )

Lesson.create!(
    category_id: 9,
    user_id: 3,
    price: 150,
    duration: 170,
    detail: "I can teach you how to make user icons for fun! I am very good at it so I hope you look at my portfolio and come! :D",
    city: "Kyoto",
    postal_code: "09996",
    date: DateTime.new(2009,1,12,10,35)
    )

Lesson.create!(
    category_id: 3,
    user_id: 1,
    price: 100,
    duration: 150,
    detail: "Latin Lessons! Please come if you can read the following: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel eos, porro veniam sequi officiis fuga, beatae quasi quisquam. Natus adipisci et omnis, illum magni quae dolorem. Fugiat accusantium distinctio, quibusdam!",
    city: "Kyoto",
    postal_code: "09993",
    date: DateTime.new(2009,9,14,8,30)
    )

Lesson.create!(
    category_id: 8,
    user_id: 1,
    price: 700,
    duration: 175,
    detail: "My name is Peter and I am the best coder ever with some free time that you can take advantage of! I will be able to teach you any language just make sure you have some background or it will be a difficult start. You can find me in Akihabara at a Maid Cafe",
    city: "Tokyo",
    postal_code: "110-0006",
    date: DateTime.new(2019,9,14,16,15)
  )

Lesson.create!(
    category_id: 12,
    user_id: 2,
    price: 690,
    duration: 400,
    detail: "My name is Alex and I am the best cook and popular founder of ChowTime(TM)! I am willing to run you through the basics of cooking just about anything from Gulash to Ramen! I specialize in Russian and Japanese dishes. You can find me in any bar around Nagoya station!",
    city: "Nagoya",
    postal_code: "450-0001",
    date: DateTime.new(2020,5,20,16,30)
  )

Lesson.create!(
    category_id: 10,
    user_id: 3,
    price: 1000,
    duration: 100,
    detail: "You may know me for my great art but this is a photography lesson! Making art is all the same stuff so I am also an expert in contempory photography!",
    city: "Kyoto",
    postal_code: "09983",
    date: DateTime.new(2009,9,14,8,30)
    )

Lesson.create!(
    category_id: 1,
    user_id: 2,
    price: 690,
    duration: 30,
    detail: "My name is Alex and I am offering English tutoring. I have the best English, believe me, lots of experts say so! Please disregard the Russian accent",
    city: "Tokyo",
    postal_code: "110-0011",
    date: DateTime.new(2018,7,27,18,45)
  )

Lesson.create!(
    category_id: 6,
    user_id: 1,
    price: 0,
    duration: 360,
    detail: "Ever wanted to be loud? Ever wanted to keep your family and neighbors up all night? If you answered yes then I am your guy! Come to Peter's Drum Emporium and learn to be loud.",
    city: "Tokyo",
    postal_code: "110-0023",
    date: DateTime.new(2019,9,16,11,10)
  )

Lesson.create!(
    category_id: 10,
    user_id: 2,
    price: 1000,
    duration: 15,
    detail: "I take the best selfies so you should learn from me! :)",
    city: "Tokyo",
    postal_code: "110-0115",
    date: DateTime.new(2019,3,14,19,5)
  )

Lesson.create!(
    category_id: 9,
    user_id: 1,
    price: 78204,
    duration: 69,
    detail: "Painting lessons here! I specialize in finger painting only the greatest of pictures! It is also a great snack so please come!",
    city: "Kyoto",
    postal_code: "09985",
    date: DateTime.new(2014,11,14,16,0)
  )

Review.create!(
  user_id: 1,
  lesson_id: 1,
  rating: 5,
  content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maiores illo autem dignissimos necessitatibus nobis repellat veniam quis distinctio provident, nostrum exercitationem veritatis quod. Quo delectus odit laboriosam, recusandae dolorum eos!"
  )

Review.create!(
  user_id: 2,
  lesson_id: 1,
  rating: 3,
  content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maiores illo autem dignissimos necessitatibus nobis repellat veniam quis distinctio provident, nostrum exercitationem veritatis quod. Quo delectus odit laboriosam, recusandae dolorum eos!"
  )

Review.create!(
  user_id: 3,
  lesson_id: 1,
  rating: 1,
  content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maiores illo autem dignissimos necessitatibus nobis repellat veniam quis distinctio provident, nostrum exercitationem veritatis quod. Quo delectus odit laboriosam, recusandae dolorum eos!"
  )
