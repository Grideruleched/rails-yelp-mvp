#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "création de restaurants"
zebi = { name: "Zebi", address: "marseille la valentine", phone_number: "0498675643",category: "bistrots" }
rtx =  { name: "Rtx", address: "marseille blancarde", phone_number: "0498328636",category: "brasserie" }
khalass =  { name: "Khalass", address: "marseille la castellane", phone_number: "0476530754",category: "brasserie" }
buvons =  { name: "Buvons", address: "marseille vieux ports", phone_number: "0453385854",category: "bar" }
kebab13 =  { name: "Kebab13", address: "marseille les caillols", phone_number: "0453385854",category: "snacks" }


[ zebi, rtx,khalass,buvons,kebab13 ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
