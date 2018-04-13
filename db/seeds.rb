# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Customer.delete_all
customers = Customer.create(
  [
    {
      firstname: "Aditi",
      lastname: "Lonhari"
    },
    {
      firstname: "Neerad",
      lastname: "Phansalkar"
    },
    {
      firstname: "Sagar",
      lastname: "Lonhari"
    },
    {
      firstname: "Ananya",
      lastname: "Pani"
    },
    {
      firstname: "Akanksha",
      lastname: "Lonhari"
    },
    {
      firstname: "Akshay",
      lastname: "Phatak"
    },
    {
      firstname: "Sanmay",
      lastname: "Patil"
    },
  ])