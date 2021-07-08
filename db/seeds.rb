# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.create(title: "Alexander Hamilton", author: "Ron Chernow", page_count: 570, image: "https://images-na.ssl-images-amazon.com/images/I/9168wNMBk1L.jpg", user: User.find_by(username: 'Bill'))
Book.create(title: "The New Right", author: "Michael Malice", page_count: 280, image: "https://images-na.ssl-images-amazon.com/images/I/510YXq4hZFL._SY291_BO1,204,203,200_QL40_ML2_.jpg", user: User.find_by(username: 'Bill'))
Book.create(title: "Starting Strength", author: "Mark Rippetoe", page_count: 600, image: "https://m.media-amazon.com/images/I/51qninUnshL.jpg", user: User.find_by(username: 'Bill'))
Book.create(title: "The Fountainhead", author: "Ayn Rand", page_count: 800, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/The_Fountain_Head_%281943_1st_ed%29_-_Ayn_Rand.jpg/220px-The_Fountain_Head_%281943_1st_ed%29_-_Ayn_Rand.jpg", user: User.find_by(username: 'Fred'))
Book.create(title: "KJV Bible", author: "God", page_count: 1800, image: "https://www.christianartgifts.com/product-images/KJV028_1--front.jpg?resizeid=5&resizeh=1200&resizew=1200", user: User.find_by(username: 'Bill'))
Book.create(title: "Human Action", author: "Ludwig von Mises", page_count: 450, image: "https://upload.wikimedia.org/wikipedia/en/thumb/0/0d/HumanActionFirst.jpg/220px-HumanActionFirst.jpg", user: User.find_by(username: 'Sally'))
Book.create(title: "Modern Times", author: "Paul Johnson", page_count: 450, image: "https://upload.wikimedia.org/wikipedia/en/thumb/a/a1/Modern_Times_%28book%29.jpg/220px-Modern_Times_%28book%29.jpg", user: User.find_by(username: 'Sally'))
Book.create(title: "Man, Economy, and State", author: "Murray N. Rothbard", page_count: 450, image: "https://m.media-amazon.com/images/I/51Em01CeumL.jpg", user: User.find_by(username: 'Sally'))
Book.create(title: "The Hitchhiker's Guide to the Galaxy", author: "Douglas Adams", page_count: 500, image: "https://i.guim.co.uk/img/static/sys-images/Guardian/Pix/pictures/2015/6/25/1435245979235/047c9878-9845-473c-9635-5f32545746b0-1355x2040.jpeg?width=700&quality=85&auto=format&fit=max&s=606433bda33c8c27c5ebd7ba85900473", user: User.find_by(username: 'Linda') )

Comment.create(content: "Good read", book: Book.find_by(title: "KJV Bible"))
Comment.create(content: "I prefer the ESV", book: Book.find_by(title: "KJV Bible"))
Comment.create(content: "Not great", book: Book.find_by(title: "Alexander Hamilton"))
Comment.create(content: "Good read", book: Book.find_by(title: "The Fountainhead"))
Comment.create(content: "meh", book: Book.find_by(title: "The Fountainhead"))
Comment.create(content: "Not great", book: Book.find_by(title: "The Fountainhead"))
Comment.create(content: "on point", book: Book.find_by(title: "The New Right"))
Comment.create(content: "meh", book: Book.find_by(title: "The New Right"))
Comment.create(content: "Wow!", book: Book.find_by(title: "Modern Times"))

User.create(username: "Bill", password: '123', password_confirmation: '123')
User.create(username: "Fred", password: '123', password_confirmation: '123')
User.create(username: "Linda", password: '123', password_confirmation: '123')
User.create(username: "Sally", password: '123', password_confirmation: '123')