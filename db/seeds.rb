# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Entry.create!(user_id: 3,
              name: 'Github',
              url: 'https://github.com',
              username: 'michal',
              password: 'password')

Entry.create!(user_id: 3,
              name: 'Amazon',
              url: 'https://amazon.com',
              username: 'michal',
              password: 'password')

Entry.create!(user_id: 3,
              name: 'Netflix',
              url: 'https://netflix.com',
              username: 'michal',
              password: 'password')

Entry.create!(user_id: 3,
              name: 'Stack Overflow',
              url: 'https://stackoverflow.com',
              username: 'michal',
              password: 'password')

Entry.create!(user_id: 3,
              name: 'Disney',
              url: 'https://disney.com',
              username: 'michal',
              password: 'password')

Entry.create!(user_id: 3,
              name: 'Facebook',
              url: 'https://facebook.com',
              username: 'michal',
              password: 'password')

Entry.create!(user_id: 3,
              name: 'Dribbble',
              url: 'https://dribbble.com',
              username: 'michal',
              password: 'password')