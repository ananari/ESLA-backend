# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
suvi = Language.create(name: "Finnish Sign Language", latitude: 60.170326, longitude: 24.952223, iso: "fse")
oegs = Language.create(name: "Austrian Sign Language", latitude: 48.2087682, longitude: 16.3318716, iso: "asq")
finger = Feature.create(name: "Fingerspelling system", domain: "Phonology")
age = Feature.create(name: "Age", domain: "Sociolinguistics")