# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.find_or_create_by(name: "Jimmy's", description:"Good Meal", img: "https://media-cdn.tripadvisor.com/media/photo-s/0b/5c/ac/47/jimmy-s-restaurant.jpg")
Restaurant.find_or_create_by(name: "Eternal Spring", description:"Making Traditional HongKong Food Since 1998", img:"https://wallpapercave.com/wp/wp3053211.jpg")
Restaurant.find_or_create_by(name: "Cambur con Pan", description:"Comida Venezolana", img:"https://bde04f90fcbcc7b99af9-a4cf3e88ec567f5b6c6819f1d482f77f.ssl.cf1.rackcdn.com/3_101386_r_0.jpg")

Product.find_or_create_by(restaurant_id: 2, name:"Egg Roll With Pork 春卷", description: "a", precio: 8000, image: "http://www.amandatastes.com/wp-content/uploads/2017/05/%E8%B6%8A%E5%8D%97%E6%98%A5%E5%8D%B7.jpg")
Product.find_or_create_by(restaurant_id: 2, name:"Dimsum 点心", description:"a", precio: 8000, image: "http://metropop-img.s3-website-ap-southeast-1.amazonaws.com/750/pop/uploads/2016/12/2-3.jpg")
Product.find_or_create_by(restaurant_id: 2, name:"Sizlling Beef 黑椒牛肉", description: "m", precio: 15000, image: "http://img1.meichubang.com/pic/201412/20/1afdc224c284d053401340f5dc685cdf.jpg")
Product.find_or_create_by(restaurant_id: 2, name:"B.B.Q. Mear Over Rice 叉烧饭", description: "m", precio: 15000, image: "https://ali.xinshipu.cn/20171213/original/1513147963830.jpg")
Product.find_or_create_by(restaurant_id: 2, name:"Curry Beef Stew Over Rice 咖喱牛肉饭", description: "m", precio: 15000, image: "http://tummyfriend.com/wp-content/uploads/2016/03/hungarian-goulash-recipe.jpg")
Product.find_or_create_by(restaurant_id: 2, name:"Grilled Pork Dumpling 锅贴", description: "m", precio: 15000, image: "http://s2.sinaimg.cn/mw690/8a43732cgx6CmHiTXJ761&690")
Product.find_or_create_by(restaurant_id: 2, name:"Bubble Tea 珍珠奶茶", description: "d", precio: 5000, image: "https://farm5.staticflickr.com/4728/38520763804_fe204eaf59_b.jpg")
Product.find_or_create_by(restaurant_id: 2, name:"Mango Sago Pomelo Dessert 杨枝甘露", description: "d", precio: 5000, image: "https://i1.hdslb.com/bfs/archive/ed150d19d3f9b59c8bbf3dfe5c14b76ea1802012.jpg")

Mesa.all.destroy_all
Mesa.create(restaurant_id: 1,name: "Table 1 (Lobby)", seats: 1, available: true)
Mesa.create(restaurant_id: 1,name: "Table 2 (Bar)",  seats: 1, available: false)

Mesa.create!(restaurant_id: 2, seats: 4, available: true)
Mesa.create!(restaurant_id: 2, seats: 4, available: true)
Mesa.create!(restaurant_id: 3, seats: 4, available: true)
Mesa.create!(restaurant_id: 3, seats: 4, available: true)
