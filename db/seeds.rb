# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_list = [
    ["00309119", 1031, "Kyle", "Goodwill", "kgoodwi2@binghamton.edu"],
    ["00354054", 4644, "Weronika", "Kowalczyk", "wkowalc1@binghamton.edu"],
    ["00304710", 1234, "Joanna", "Wallac", "jwallac2@binghamton.edu"],
    ["00348099", 7000, "Htin", "Linn", "hkyaw1@binghamton.edu"],
    ["00402129", 9876, "Bassheva", "Steinberger", "bsteinb1@binghamton.edu"],
    ["00337646", 7393, "Kelsey", "Skaarva", "kskaarv1@binghamton.edu"]
]

user_list.each do |bu_id, pin, first_name, last_name, email|
    User.create(bu_id: bu_id, pin: pin, first_name: first_name, last_name: last_name, email: email)
end
