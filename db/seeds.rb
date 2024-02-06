# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
tournament1 = Tournament.create(title: 'Tournament 1', link: 'link1')
tournament2 = Tournament.create(title: 'Tournament 2', link: 'link2')

# Associate images with tournaments
tournament1.images.create( url: 'image1.jpg')
tournament1.images.create( url: 'image2.jpg')
tournament2.images.create( url: 'image3.jpg')