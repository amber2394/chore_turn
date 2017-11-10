require 'faker'

AssignmentChore.delete_all
Chore.delete_all
HouseholdUser.delete_all
Household.delete_all
User.delete_all

penn = User.create(first_name: "Chris", last_name: "Camp", username: "chriscamp", email: "chriscamp@gmail.com", password: "password")
amber = User.create(first_name: "Amber", last_name: "Maillard", username: "ambermaillard", email: "ambermaillard@gmail.com", password: "password")
khadija = User.create(first_name: "Khadija", last_name: "Franklin", username: "khadijafranklin", email: "khadijafranklin@gmail.com", password: "password")
andreas = User.create(first_name: "Andreas", last_name: "Landgrebe", username: "andreaslandgrebe", email: "andreaslandgrebe@gmail.com", password: "password")

household = (name: "DBC", home_address: Faker::Address.street_address)

HouseholdUser.create(user_id: [1, 2, 3, 4].sample, household_id: 1)

15.times do
  Chore.create(name: "Chore", duration: Faker::Number.between(1,30), status: [true, false].sample, date: Faker::Date.between(2.days.ago, Date.today), household_id: 1)
end

AssignmentChore.create(user_id: [1, 2, 3, 4].sample, chore_id: Faker::Number.between(1, 15))
