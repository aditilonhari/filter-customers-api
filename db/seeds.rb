# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Customer.delete_all
#Company.delete_all
# customers = Customer.create(
#   [
#     {
#       firstname: "Aditi",
#       lastname: "Lonhari",
#     },
#     {
#       firstname: "Neerad",
#       lastname: "Phansalkar"
#     },
#     {
#       firstname: "Sagar",
#       lastname: "Lonhari"
#     },
#     {
#       firstname: "Ananya",
#       lastname: "Pani"
#     },
#     {
#       firstname: "Akanksha",
#       lastname: "Lonhari"
#     },
#     {
#       firstname: "Akshay",
#       lastname: "Phatak"
#     },
#     {
#       firstname: "Sanmay",
#       lastname: "Patil"
#     },
#  ])


# company1 = Company.create({name: "Dolby"})
# company1.customers.create( {
#        firstname: "Neerad",
#        lastname: "Phansalkar"
#    })
# company1.customers.create( {
#        firstname: "Aditi",
#        lastname: "Lonhari"
#    })

# company2 = Company.create({name: "Apple"})
# company2.customers.create( {
#        firstname: "Akanksha",
#        lastname: "Lonhari"
#    })
# company2.customers.create( {
#        firstname: "Sanmay",
#        lastname: "Patil"
#    })
# company2.customers.create( {
#        firstname: "Shweta",
#        lastname: "Patil"
#    })

# company3 = Company.create({name: "Tesla"})
# company3.customers.create( {
#        firstname: "Akshay",
#        lastname: "Phatak"
#    })
# company3.customers.create( {
#        firstname: "Aparna",
#        lastname: "Gokhale"
#    })

# company3.customers.create( {
#        firstname: "Sagar",
#        lastname: "Lonhari"
#    })



customers = Customer.create(
  [
    {
      firstname: "Aditi",
      lastname: "Lonhari",
      company_name: "Dolby"
    },
    {
      firstname: "Neerad",
      lastname: "Phansalkar",
      company_name: "Dolby"
    },
    {
      firstname: "Harsshad",
      lastname: "Phansalkar",
      company_name: "Dolby"
    },
    {
      firstname: "Sagar",
      lastname: "Lonhari",
      company_name: "Tesla"
    },
    {
      firstname: "Ananya",
      lastname: "Pani",
      company_name: "Tesla"
    },
    {
      firstname: "Akanksha",
      lastname: "Lonhari",
      company_name: "Apple"
    },
    {
      firstname: "Akshay",
      lastname: "Phatak",
      company_name: "Tesla"
    },
    {
      firstname: "Sanmay",
      lastname: "Patil",
      company_name: "Apple"
    },
    {
      firstname: "Sanjivani",
      lastname: "Lonhari",
      company_name: "Apple"
    },
 ])
