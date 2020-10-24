class ShopsController < ApplicationController
	before_action :create_shops, only: :index

	def create_shops
		@shops = Gmaps4rails.build_markers(Shop.all) do |shop, marker|
			marker.lat shop.latitude
			marker.lng shop.longitude

			marker.picture({
        "url" => "/assets/#{shop.category}.png",
        "width" => 35,
        "height" => 30
      })

      marker.infowindow shop.name
		end
	end

	def index
	end
end
