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
doc_holiday_grave = Trail.create(name: 'Doc Holiday Grave Trail', location: 'Glenwood Springs', description: 'This trail features beautiful  flowers and is great for bird watching. Also features rock formations that are great for climbing.', difficulty: "Easy", has_water: false, pets_allowed: true, has_bathrooms: false, has_shade: false, has_parking_fee: true, length_distance: 1.2, length_time: 1)
storm_king_mountain = Trail.create(name: 'Storm King Mountain Memorial Trail', location: 'Glenwood Springs', description: 'This trail is primarily used for hiking, nature trips, and bird watching. It also features scenic views of the mountain pass.', difficulty: "Medium", has_water: true, pets_allowed: true, has_bathrooms: true, has_shade: true, has_parking_fee: true, length_distance: 3.6, length_time: 2.5)
boy_scout = Trail.create(name: 'Boy Scout Trail', location: 'Glenwood Springs', description: 'The trail climbing efforts are rewarded by spectacular views high on the rim of Glenwood Canyon, hikers can see the sliver of the Colorado River and the steep cliff edges below', difficulty: "Hard", has_water: true, pets_allowed: true, has_bathrooms: true, has_shade: false, has_parking_fee: false, length_distance: 6.2, length_time: 5)
mount_sanitas = Trail.create(name: 'Mount Sanitas and Sanitas Valley Loop', location: 'Boulder', description: ' wonderful "desert like" hike with great rock formations, vistas of Boulder CO, and rock scrambling if desired.  The terrain varies from open meadows and wild flowers.', difficulty: "Medium", has_water: false, pets_allowed: false, has_bathrooms: true, has_shade: true, has_parking_fee: true, length_distance: 3, length_time: 2.2)
green_mountain = Trail.create(name: 'Green Mountain West Trail', location: 'Boulder', description: 'The trail is primarily used for hiking, running, nature trips, and bird watching and is best used from April until October. Be careful of the elevation, the trail goes along steep cliffs.', difficulty: "Medium", has_water: true, pets_allowed: true, has_bathrooms: false, has_shade: false, has_parking_fee: true, length_distance: 3.5, length_time: 2.8)
mallory = Trail.create(name: 'Mallory Cave', location: 'Boulder', description: 'This hike starts at the NCAR parking lot. Head west to the Mesa trail and cross it by the information sign. There are lots of offshoot trails, be sure to follow the signs to the final 100 ft rock climb.', difficulty: "Hard", has_water: true, pets_allowed: true, has_bathrooms: true, has_shade: true, has_parking_fee: false, length_distance: 7, length_time: 5.5)
treeline_loop = Trail.create(name: 'Treeline Loop', location: 'Climax', description: 'Lightly trafficked loop trail that features a great forest setting and is good for all skill levels. The trail is primarily used for hiking and cross country skiing.', difficulty: "Easy", has_water: true, pets_allowed: false, has_bathrooms: false, has_shade: true, has_parking_fee: true, length_distance: 1.5, length_time: 1.2)
chalk_mountain = Trail.create(name: 'Chalk Mountain', location: 'Climax', description: 'Lightly trafficked out and back trail that is used year round. Great for trail running in the summer and cross country skiing in the winter. Also a favorite for ATV users so be carful.', difficulty: "Hard", has_water: true, pets_allowed: false, has_bathrooms: false, has_shade: false, has_parking_fee: false, length_distance: 5, length_time: 4)
vance_cabin = Trail.create(name: 'Vance Cabin to Taylor Hill', location: 'Climax', description: 'Short out and back trail that features rustic cabins and lots of wildlife. Be aware of the risk of avalanches if you are in this area in the winter.', difficulty: "Easy", has_water: true, pets_allowed: false, has_bathrooms: false, has_shade: false, has_parking_fee: true, length_distance: 1.8, length_time: 1.5)
wildhorse = Trail.create(name: 'Wildhorse Trail', location: 'Cheyenne Canyon', description: 'The trail is primarily used for hiking and rock climbing. Features great views of the Northern ridges and canyon. Can be used for snow shoeing in the winter', difficulty: "Easy", has_water: true, pets_allowed: false, has_bathrooms: false, has_shade: true, has_parking_fee: false, length_distance: 2, length_time: 1.5)
rocky_ridge = Trail.create(name: 'Rocky Ridge Trail', location: 'Cheyenne Canyon', description: 'This trail features beautiful flowers and wildlife. Great starting point for those looking to climb Mount Lincoln via Crest Drive', difficulty: "Hard", has_water: false, pets_allowed: false, has_bathrooms: false, has_shade: false, has_parking_fee: true, length_distance: 5.5, length_time: 4.1)
western_meadows = Trail.create(name: 'Western Meadows Loop', location: 'Cheyenne Canyon', description: 'The trail is primarily used for hiking and walking and is best used from May until October. Great for families and beginners.', difficulty: "Easy", has_water: true, pets_allowed: true, has_bathrooms: false, has_shade: false, has_parking_fee: false, length_distance: 1.8, length_time: 1.5)






#User
Jack = User.create(first_name: "Jack", last_name: "Sparrow", username: "blackpearl", email: "rumsgone@yahoo.com")


#Favorites
Jacks_favorite1 = Favorite.create(trail: hanging_lake, user: Jack)
Jacks_favorite2 = Favorite.create(trail: royal_arch, user: Jack)
Jacks_favorite3 = Favorite.create(trail: rocky_ridge, user: Jack)