Trail.destroy_all
User.destroy_all
Favorite.destroy_all


#Trails
hanging_lake = Trail.create(name: 'Hanging Lake Trail', location: 'Glenwood Springs', description: 'Lake with vibrant green waters, cascades & sheer cliffs, accessed by steep hike or shuttle bus.', difficulty: "Hard", has_water: true, pets_allowed: true, has_bathrooms: true, has_shade: true, has_parking_fee: true, length_distance: 3, length_time: 1)
chataqua = Trail.create(name: 'Chataqua Trail', location: 'Boulder', description: 'A heavily trafficked out and back trail that features beautiful wild flowers.', difficulty: "Easy", has_water: false, pets_allowed: true, has_bathrooms: false, has_shade: false, has_parking_fee: true, length_distance: 3.6, length_time: 1.5)
royal_arch = Trail.create(name: 'Royal Arch Trail', location: 'Boulder', description: 'Royal Arch Trail features beautiful wild flowers. The trail is primarily used for hiking, running, nature trips, and snowshoeing.', difficulty: "Hard", has_water: false, pets_allowed: true, has_bathrooms: false, has_shade: true, has_parking_fee: false, length_distance: 4, length_time: 2.5)
quandry_peak = Trail.create(name: 'Quandry Peak Trail', location: 'Climax', description: 'Quandary Peak Trail features beautiful wild flowers. The trail offers a number of activity options and is accessible year-round.', difficulty: "Hard", has_water: false, pets_allowed: true, has_bathrooms: false, has_shade: true, has_parking_fee: false, length_distance: 7.5, length_time: 5)
grays_torreys = Trail.create(name: 'Grays and Torrey\'s Peak', location: 'Idaho Springs', description: 'Grays and Torrey\'s Peak features a river and is primarily used for hiking, running, camping, and backpacking.', difficulty: "Hard", has_water: true, pets_allowed: true, has_bathrooms: false, has_shade: true, has_parking_fee: true, length_distance: 9.7, length_time: 6)
seven_bridges = Trail.create(name: 'Seven Bridges Trail', location: 'Cheyenne Canyon', description: 'The trail follows the North Cheyenne Creek and is named after the bridges that cross it along the way. It\'s a great trail for kids, to cool down on a hot summer day and a beautiful hike in fall when aspens turn colors.', difficulty: "Easy", has_water: true, pets_allowed: true, has_bathrooms: true, has_shade: false, has_parking_fee: false, length_distance: 1.6, length_time: 1.5)


#User
Jack = User.create(first_name: "Jack", last_name: "Sparrow", username: "blackpearl", email: "rumsgone@yahoo.com")


#Favorites
Jacks_favorite = Favorite.create(trail: hanging_lake, user: Jack)