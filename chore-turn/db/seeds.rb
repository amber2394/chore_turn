require 'faker'

AssignmentChore.delete_all
Chore.delete_all
HouseholdUser.delete_all
Household.delete_all
User.delete_all

# Creating Users
penn = User.create(first_name: "Chris", last_name: "Camp", username: "chriscamp", email: "chriscamp@gmail.com", password: "password")
amber = User.create(first_name: "Amber", last_name: "Maillard", username: "ambermaillard", email: "ambermaillard@gmail.com", password: "password")
khadija = User.create(first_name: "Khadija", last_name: "Franklin", username: "khadijafranklin", email: "khadijafranklin@gmail.com", password: "password")
andreas = User.create(first_name: "Andreas", last_name: "Landgrebe", username: "andreaslandgrebe", email: "andreaslandgrebe@gmail.com", password: "password")

# Creating a household
household = Household.create(id: 1, name: "DBC", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zip_code: 12345)

# Assigning Users to a Household
HouseholdUser.create(user_id: 1, household_id: 1)
HouseholdUser.create(user_id: 2, household_id: 1)
HouseholdUser.create(user_id: 3, household_id: 1)
HouseholdUser.create(user_id: 4, household_id: 1)

# Creating Chores
15.times do
  chore =  Chore.create(name: "Chore", duration: Faker::Number.between(1,30), status: [true, false].sample, date: Faker::Date.between(2.days.ago, Date.today), household_id: 1)
end

# Assigning Chores to a User
AssignmentChore.create(user_id: [1, 2, 3, 4].sample, chore_id: 1)
