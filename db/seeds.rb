# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
suvi = Language.create(name: "Finnish Sign Language", latitude: 60.170326, longitude: 24.952223, iso: "fse")
oegs = Language.create(name: "Austrian Sign Language", latitude: 48.2087682, longitude: 16.3318716, iso: "asq")
bsl = Language.create(name: "British Sign Language", latitude: 51.5836618, longitude: -0.0650622, iso: "bfi")
sts = Language.create(name: "Swedish Sign Language", latitude: 59.8657505, longitude: 17.64803, iso: "swl")
ssp = Language.create(name: "Spanish Sign Language", latitude: 40.4166927, longitude: -3.7038101, iso: "ssp")
isg = Language.create(name: "Irish Sign Language", latitude: 53.3495317, longitude: -6.2604009, iso: "isg")
dse = Language.create(name: "Dutch Sign Language", latitude: 52.3700963, longitude: 4.8879743, iso: "dse")
csc = Language.create(name: "Catalan Sign Language", latitude: 42.267777, longitude: 2.9639273, iso: "csc")
ise = Language.create(name: "Italian Sign Language", latitude: 41.9003401, longitude: 12.5003077, iso: "ise")
rsl = Language.create(name: "Russian Sign Language", latitude: 55.865749, longitude: 37.4986992, iso: "rsl")
icl = Language.create(name: "Icelandic Sign Language", latitude: 65, longitude: -19, iso: "icl")
vgt = Language.create(name: "Flemish Sign Language", latitude: 51.2605163, longitude: 4.2176371, iso: "vgt")
tsm = Language.create(name; "Turkish Sign Language", latitude: 40, longitude: 33, iso: "tsm")
finger = Feature.create(name: "Fingerspelling system", domain: "Phonology")
age = Feature.create(name: "Age", domain: "Sociolinguistics")
family = Feature.create(name: "Family", domain: "Historical linguistics")
irrneg = Feature.create(name: "Irregular negatives", domain: "Morphology")
suvifinger = Datapoint.create(value: "Abbé de l'Épée's system", language_id: 1, feature_id: 1, user_id: 1)
bslfinger = Datapoint.create(value: "BANZSL system", language_id: 3, feature_id: 1, user_id: 1)
suvifamily = Datapoint.create(value: "Swedish Sign", language_id: 1, feature_id: 3, user_id: 1)
oegsfamily = Datapoint.create(value: "French Sign", language_id: 2, feature_id: 3, user_id: 1)
bslfamily = Datapoint.create(value: "BANZSL", language_id: 3, feature_id: 3, user_id: 1)
dsefamily = Datapoint.create(value: "Isolate", language_id: 7, feature_id: 3, user_id: 1)
cscfamily = Datapoint.create(value: "Spanish Sign", language_id: 8, feature_id: 3, user_id: 1)
sspirrneg = Datapoint.create(value: "One", language_id: 5, feature_id: 4, user_id: 1 )
bslirrneg = Datapoint.create(value: "Many", language_id: 3, feature_id: 4, user_id: 1 )
iseirrneg = Datapoint.create(value: "Some", language_id: 9, feature_id: 4, user_id: 1 )
tsmfam = Datapoint.create(value: "Isolate", language_id: 14, feature_id: 3, user_id: 1 ) 

