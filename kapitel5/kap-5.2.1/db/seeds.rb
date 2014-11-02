# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

states = []

[
	"Baden-Württemberg",
	"Bayern",
	"Berlin",
	"Brandenburg",
	"Bremen",
	"Hamburg",
	"Hessen",
	"Mecklenburg-Vorpommern",
	"Niedersachsen",
	"Nordrhein-Westfalen",
	"Rheinland-Pfalz",
	"Saarland",
	"Sachsen",
	"Sachsen-Anhalt",
	"Schleswig-Holstein",
	"Thüringen"
].each do |state|
	states << State.new(:name => state)
end

Country.create!(:name => "Deutschland",
				:states => states)

states = []

[
	"Burgenland",
	"Kärnten",
	"Niederösterreich",
	"Oberösterreich",
	"Salzburg",
	"Steiermark",
	"Tirol",
	"Vorarlberg",
	"Wien"
].each do |state|
	states << State.new(:name => state)
end

Country.create!(:name => "Österreich",
				:states => states)