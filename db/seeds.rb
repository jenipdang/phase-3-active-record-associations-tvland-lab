# This will delete any existing rows from the Movie and Actor tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting movie/actor data..."
Show.destroy_all
Actor.destroy_all

puts "Creating shows..."
thrones = Show.create(name: "Game of Thrones")
office = Show.create(name: "The Office")

puts "Creating actors..."
peter = Actor.create(first_name: "Peter", last_name: "Dinklage")
steve = Actor.create(first_name: "Steve", last_name: "Carell")
jenna = Actor.create(first_name: "Jenna", last_name: "Fischer")
john = Actor.create(first_name: "John", last_name: "Krasinski")
melora = Actor.create(first_name: "Melora", last_name: "Hardin")
ed = Actor.create(first_name: "Ed", last_name: "Helms")


puts "Creating characters..."
tyrion = Character.create(name: "Tyrion Lannister", actor_id: peter.id, show_id: thrones.id)
dwight = Character.create(name: "Dwight Schrute", actor_id: peter.id, show_id: office.id)
micheal = Character.create(name: "Michael Scott", actor_id: steve.id, show_id: office.id)
pam = Character.create(name: "Pam Beesly", actor_id: jenna.id, show_id: office.id)
jim = Character.create(name: "Jim Halpert", actor_id: john.id, show_id: office.id)
jan = Character.create(name: "Jan Levinson", actor_id: melora.id, show_id: office.id)
andy = Character.create(name: "Andy Bernard", actor_id: ed.id, show_id: office.id)


puts "Seeding done!"