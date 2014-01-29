# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

products = []
products << Product.create(name: "gold ring", description: "24k", price: 5000.0)
products << Product.create(name: "long gold necklace", description: "36 inches, 18k", price: 2000.0)
products << Product.create(name: "button earrings", description: "artisan, made from real buttons", price: 30.0)
products << Product.create(name: "3 finger ring", description: "good for self defense", price: 1500.0)
products << Product.create(name: "jewelry box", description: "holds your treasures", price: 100.0)
products << Product.create(name: "solder gun", description: "for professional use only", price: 70.0)
products << Product.create(name: "jewelry making kit", description: "make your own jewelry", price: 120.0)
products << Product.create(name: "candy", description: "fundraiser chocolate", price: 1.0)
products << Product.create(name: "silver wire", description: "sterling silver, 50 feet", price: 200.0)
products << Product.create(name: "loose gemstones", description: "various sizes, 1 bag contains 10 carats total", price: 300.0)

categories = []
categories << Category.create(name: "jewelry")
categories << Category.create(name: "tools")
categories << Category.create(name: "impulse buys")
categories << Category.create(name: "gold")
categories << Category.create(name: "silver")
categories << Category.create(name: "accessories")

categories[0].products << products[0]
categories[0].products << products[1]
categories[0].products << products[3]

categories[5].products << products[-4]





