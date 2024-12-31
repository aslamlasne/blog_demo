# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
user = User.find_by(email: "aslamlasne@gmail.com")
if user.nil?
    user = User.create(email: "aslamlasne@gmail.com", password: "password", password_confirmation: "password")
end
10.times do |x|
    Post.create(title: "Title #{x}", body: "Body #{x} Here you go body of the text in the blog", user_id: user.id)
end
