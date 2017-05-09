# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


car_make = CarMake.create([{name: 'Toyota'}, {name: 'Honda'}, {name: 'Ford'}, {name: 'Holden'}, {name: 'Nissan'}])

# car_model = CarModel.create([{name: 'Toyota Corolla', car_make_id: 1}, {name: 'Toyota Camry', car_make_id: 1},                             {name: 'Toyota Yaris', car_make_id: 1}, {name: 'Toyota Landcruiser', car_make_id: 1},                             {name: 'Toyota Kulger', car_make_id: 1}, {name:'Honda Accord', car_make_id: 2},
#                              {name: 'Honda Civic', car_make_id: 2}, {name: 'Honda City', car_make_id: 2}, {name: 'Honda CRV', car_make_id: 2}, {name: 'Honda Jazz', car_make_id: 2}, 
#                              {name: 'Ford Mondeo', car_make_id: 3}, {name: 'Ford Falcon', car_make_id: 3},
#                              {name: 'Ford Fiesta', car_make_id: 3}, {name: 'Ford Territory', car_make_id: 3}, {name: 'Ford Ecosport', car_make_id: 3}, {name: 'Holden Astra', car_make_id: 4}, {name: 'Holden Cruze', car_make_id: 4}, {name: 'Holden Commodore', car_make_id: 4},
#                             {name: 'Holden Barina', car_make_id: 4}, {name: 'Holden Statesman', car_make_id: 4}, {name:'Nissan GT-R', car_make_id: 5}, {name: 'Nissan Maxima', car_make_id: 5},      {name: 'Nissan Dualis', car_make_id: 5}, {name: 'Nissan Pulsar', car_make_id: 5},
#                              {name: 'Nissan X-Trail', car_make_id: 5}])