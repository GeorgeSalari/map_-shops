require 'faker'

categories = ['spa', 'nails', 'hair', 'barbershop']

def fake_number(min, max)
	Faker::Number.unique.between(from: min, to: max)
end

1000.times do
	Shop.create( name: Faker::Company.name, category: categories.sample, latitude: fake_number(13.70, 13.79), longitude: fake_number(100.35, 100.66) )
end
