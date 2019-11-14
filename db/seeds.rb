# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
sqk = Language.create(name: "Albanian Sign Language", latitude: 42, longitude: 19.5, iso: "sqk")
aen = Language.create(name: "Armenian Sign Language", latitude: 40.5, longitude: 44, iso: "aen")
oegs = Language.create(name: "Austrian Sign Language", latitude: 47.75, longitude: 14.25, iso: "asq")
bsl = Language.create(name: "British Sign Language", latitude: 52.5, longitude: -2, iso: "bfi")
csc = Language.create(name: "Catalan Sign Language", latitude: 42.5, longitude: 1, iso: "csc")
dse = Language.create(name: "Dutch Sign Language", latitude: 52.65, longitude: 4.75, iso: "dse")
eso = Language.create(name: "Estonian Sign Language", latitude: 59.4, longitude: 24.7, iso: "eso")
suvi = Language.create(name: "Finnish Sign Language", latitude: 62.5, longitude: 26, iso: "fse")
vgt = Language.create(name: "Flemish Sign Language", latitude: 51.2605163, longitude: 4.2176371, iso: "vgt")
gsg = Language.create(name: "German Sign Language", latitude: 52, longitude: 8.5, iso: "gsg")
gss = Language.create(name: "Greek Sign Language", latitude: 40, longitude: 21, iso: "gss")
icl = Language.create(name: "Icelandic Sign Language", latitude: 65, longitude: -19, iso: "icl")
isg = Language.create(name: "Irish Sign Language", latitude: 53.75, longitude: -8.5, iso: "isg")
ise = Language.create(name: "Italian Sign Language", latitude: 43.5, longitude: 12.5, iso: "ise")
mdl = Language.create(name: "Maltese Sign Language", latitude: 35.9, longitude: 14.51, iso: "mdl")
nsl = Language.create(name: "Norwegian Sign Language", latitude: 62.25, longitude: 7.5, iso: "nsl")
pso = Language.create(name: "Polish Sign Language", latitude: 53, longitude: 18, iso: "pso")
rms = Language.create(name: "Romanian Sign Language", latitude: 46.75, longitude: 23.5, iso: "rms")
rsl = Language.create(name: "Russian Sign Language", latitude: 55.865749, longitude: 37.4986992, iso: "rsl")
ssp = Language.create(name: "Spanish Sign Language", latitude: 40.4166927, longitude: -3.7038101, iso: "ssp")
sts = Language.create(name: "Swedish Sign Language", latitude: 60, longitude: 14.25, iso: "swl")
tsm = Language.create(name: "Turkish Sign Language", latitude: 40, longitude: 33, iso: "tsm")
ysl = Language.create(name: "Yugoslav Sign Language", latitude: 44.5, longitude: 17.75, iso: "ysl")

age = Feature.create(name: "Age", domain: "Sociolinguistics")
family = Feature.create(name: "Family", domain: "Historical linguistics")
finger = Feature.create(name: "Fingerspelling system", domain: "Phonology")
irrneg = Feature.create(name: "Irregular negatives", domain: "Morphology")
qparticles = Feature.create(name: "Question particles", domain: "Syntax")
size = Feature.create(name: "Size", domain: "Sociolinguistics")

