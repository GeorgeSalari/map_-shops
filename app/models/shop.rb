class Shop < ApplicationRecord
	validates :name, :latitude, :longitude, :category, presence: true
	validates :name, length: { minimum: 2 }
	validates :category, inclusion: { in: ['spa', 'nails', 'hair', 'barbershop'] }
end
