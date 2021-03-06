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
    username: "Hamburgler",
    password:"123456"

  )
User.create!(
    first_name: "Alexei",
    last_name: "Moskowvich",
    email: "cocoichi@4ever.com",
    phone_number: "420-6969-6969",
    remote_avatar_url: "https://avatars1.githubusercontent.com/u/42726237?s=400&v=4",
    username: "Russian_Spy_Putin<3",
    password:"123456"
  )

User.create!(
    first_name: "Pao",
    last_name: "Eawsivigoon",
    email: "emoji-specialist@art.net",
    phone_number: "432-659-1953",
    remote_avatar_url: "https://avatars1.githubusercontent.com/u/46549190?s=400&v=4",
    username: "Pooh Bear",
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
    city: "Tokyo",
    address: "Aoyama Gakuin",
    date: DateTime.new(2019,3,12,10,35)
    )

Lesson.create!(
    category_id: 3,
    user_id: 1,
    price: 100,
    duration: 150,
    detail: "Latin Lessons! Please come if you can read the following: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel eos, porro veniam sequi officiis fuga, beatae quasi quisquam. Natus adipisci et omnis, illum magni quae dolorem. Fugiat accusantium distinctio, quibusdam!",
    city: "Tokyo",
    address: "Shibuya Scramble",
    date: DateTime.new(2019,9,14,8,30)
    )

Lesson.create!(
    category_id: 8,
    user_id: 1,
    price: 700,
    duration: 175,
    detail: "My name is Peter and I am the best coder ever with some free time that you can take advantage of! I will be able to teach you any language just make sure you have some background or it will be a difficult start. You can find me in Akihabara at a Maid Cafe",
    city: "Tokyo",
    address: "Akihabara",
    date: DateTime.new(2019,9,14,16,15)
  )

Lesson.create!(
    category_id: 12,
    user_id: 2,
    price: 690,
    duration: 100,
    detail: "My name is Alex and I am the best cook and popular founder of ChowTime(TM)! I am willing to run you through the basics of cooking just about anything from Gulash to Ramen! I specialize in Russian and Japanese dishes. You can find me in any bar around Nagoya station!",
    city: "Tokyo",
    address: "Nippon Budokan",
    date: DateTime.new(2019,5,20,16,30)
  )

Lesson.create!(
    category_id: 10,
    user_id: 3,
    price: 1000,
    duration: 100,
    detail: "You may know me for my great art but this is a photography lesson! Making art is all the same stuff so I am also an expert in contempory photography!",
    city: "Tokyo",
    address: "Harajuku Takeshita Street",
    date: DateTime.new(2019,9,14,8,30)
    )

Lesson.create!(
    category_id: 1,
    user_id: 2,
    price: 690,
    duration: 30,
    detail: "My name is Alex and I am offering English tutoring. I have the best English, believe me, lots of experts say so! Please disregard the Russian accent",
    city: "Tokyo",
    address: "Keio University",
    date: DateTime.new(2019,7,27,18,45)
  )

Lesson.create!(
    category_id: 6,
    user_id: 1,
    price: 0,
    duration: 360,
    detail: "Ever wanted to be loud? Ever wanted to keep your family and neighbors up all night? If you answered yes then I am your guy! Come to Peter's Drum Emporium and learn to be loud.",
    city: "Tokyo",
    address: "Shinjuku",
    date: DateTime.new(2019,9,16,11,10)
  )

Lesson.create!(
    category_id: 10,
    user_id: 2,
    price: 1000,
    duration: 15,
    detail: "I take the best selfies so you should learn from me! :)",
    city: "Tokyo",
    address: "Higashi-Nakano Station",
    date: DateTime.new(2019,3,14,19,5)
  )

Lesson.create!(
    category_id: 9,
    user_id: 1,
    price: 78204,
    duration: 69,
    detail: "Painting lessons here! I specialize in finger painting only the greatest of pictures! It is also a great snack so please come!",
    city: "Tokyo",
    address: "Tokyo Dome City",
    date: DateTime.new(2019,11,14,16,0)
  )

Review.create!(
  user_id: 3,
  lesson_id: 4,
  rating: 3,
  content: "Maybe the best chef I have ever seen! He made a cheap meal that would put Gordon Ramsey to shame!"
  )
