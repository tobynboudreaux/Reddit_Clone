# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Group.create(title: "Cats R Life")
User.create(username: "Yeetboi", password_digest: "password", group_id: 1)
Topic.create(title: "Cat Pics or GTFO", description: "Plz moar cats or die.")
Post.create(title: "Yeet", content: "This is a post.", img_url: "www.images-of-dogs.com", user_id: 1, topic_id: 1)
Like.create(user_id: 1, post_id: 1)

u = User.first
t = Topic.first
p = Post.first
l = Like.first
g = Group.first