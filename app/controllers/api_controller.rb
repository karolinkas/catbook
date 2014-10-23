class ApiController < ApplicationController

	def show 
		cat = Cat.visible.find(params[:id])

		result = {}.tap do |cat_hash|
			cat_hash[:name]
			cat_hash[:birthday]
			cat_hash[:followers_count]
			cat_hash[:followed_by_count]
			if fields.include?("links")
				cat_hash[:links] = {
					public: cat_url(cat),
					api: api_v1_cat_url(cat)
				}



	end

end
