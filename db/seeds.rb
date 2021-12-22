# This will delete any existing rows from the Dish and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
Dish.destroy_all
User.destroy_all


puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)
# you = User.create(name: "Feel Free To Change This To Your Name")


puts "Creating dishes..."
dish1 = Dish.create(name: "Pancakes", intended_to_be: "Sweet", current_price: 10.00)
dish2 = Dish.create(name: "Vegan Pasta", intended_to_be: "Spicy", current_price: 8.88)




puts "Creating ratings..."
# *****************************************************************
# * TODO: create ratings! Remember, a rating belongs to a dishes  *
# * and a rating belongs to an user.                              *
# *****************************************************************
# Create Ratings Here




puts "🌱 Seeding done! 🌱

    ✨👏🏾👏🏾👏🏾✨
    If You're Reading This: Your're Doing Great! 
    ✨🙌🏾🙏🏾🙌🏾✨


"