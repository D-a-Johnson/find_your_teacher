# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

User.create!(
    first_name: "Coco",
    last_name: "Ichi",
    email: "cocoici@curry.omg",
    phone_number: "075-342-5185",
    remote_avatar_url: "https://i.kinja-img.com/gawker-media/image/upload/s--J1L04N3a--/c_scale,f_auto,fl_progressive,q_80,w_800/x88bidyo4mmvo2ibifao.jpg",
    username: "cocoichi",
    password:"123456"

  )
User.create!(
    first_name: "Mickey",
    last_name: "D",
    email: "mcdonald@everyday.com",
    phone_number: "075-353-2225",
    remote_avatar_url: "https://nationalzoo.si.edu/sites/default/files/animals/alpaca-04.jpg",
    username: "mickeyd",
    password:"123456"
  )


Category.create(
    name: "Music"
  )


Lesson.create(
    category_id: 1,
    user_id: 1,
    price: 100,
    duration: 150,
    detail: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel eos, porro veniam sequi officiis fuga, beatae quasi quisquam. Natus adipisci et omnis, illum magni quae dolorem. Fugiat accusantium distinctio, quibusdam!",
    city: "Kyoto"
  )

