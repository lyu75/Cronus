# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ashley = User.create(username: "Ashley-Dui", email: "adui@d.com", password: "1234567890")
3.times do |i|
  project = Project.create(name: "project#{i}", description: "#{i}", user: User.all[1])
end
