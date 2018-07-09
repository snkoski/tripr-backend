# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

#

# user = User.find_or_initialize_by(email: 'bob@example.com')
# user.name = 'Bob'
# user.password = 'secret'
# user.role = 'manager'
# user.save!



# User.create(first_name: "Shawn", last_name: "Koski", email: "thisisnotmyemail@fake.com")
# User.create(first_name: "Chris", last_name: "Aguis", email: "afakeemail@fake.com")
# Destination.create(name: "Paris", country: "France", description: "Paris is the capital and most populous city of France, with an area of 105 square kilometres (41 square miles) and a population of 2,206,488. Since the 17th century, Paris has been one of Europe's major centres of finance, commerce, fashion, science, music and painting.")
# Destination.create(name: "Havana", country: "Cuba", description: "Havana is the capital city, largest city, province, major port, and leading commercial center of Cuba. The city has a population of 2.1 million inhabitants, and it spans a total of 781.58 km3 (187.51 cu mi) – making it the largest city by area, the most populous city, and the fourth largest metropolitan area in the Caribbean region.")
# Activity.create(name: "Havana National Museum of Fine Arts", description: "The National Museum of Fine Arts (Museo Nacional de Bellas Artes) is a Fine Arts museum that exhibits Cuban and International art collections. The museum houses one of the largest collections of paintings and sculpture from Latin America and is the largest in the Caribbean region.", destination_id: 2)
# Activity.create(name: "Eiffel Tower", description: "The Eiffel Tower is a wrought iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. Constructed from 1887–89 as the entrance to the 1889 World's Fair, it was initially criticized by some of France's leading artists and intellectuals for its design, but it has become a global cultural icon of France and one of the most recognisable structures in the world.", destination_id: 1)
# Activity.create(name: "Great Theatre of Havana", description: "Facing Havana's Central Park is the baroque Great Theatre of Havana, a prominent theatre built in 1837. It is now home of the National Ballet of Cuba and the International Ballet Festival of Havana, one of the oldest in the New World. The façade of the building is adorned with a stone and marble statue.", destination_id: 2)
# Trip.create(name: "Shawn goes to Cuba", start_date: "2018-08-05 21:44:35", end_date: "2018-08-15 21:44:35", destination_id: 2)
# Trip.create(name: "Chris goes to Paris", start_date: "2018-08-05 21:44:35", end_date: "2018-08-15 21:44:35", destination_id: 1)
#
# UserTrip.create(user_id: 1, trip_id: 1)
# UserTrip.create(user_id: 2, trip_id: 2)

TripActivity.create(trip_id: 1, activity_id: 3)
TripActivity.create(trip_id: 2, activity_id: 1)
