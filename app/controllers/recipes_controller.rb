class RecipesController < ApplicationController
  def index
  	@yesterday_time = Time.now + (24 * 60 * 60) + 2333
  	 
		@search_term = "chocolate"
		@recipes = Recipe.for(@search_term)

  	 # @key_value = Recipe.key_data.key_value

  	# # From the QueryString
  	# if @search == nil
  	# 	@keyword = "chocolate"
  	# else
  	# 	@keyword = @search
 		# end
  	
  	# Code could be added here to get the search term from recipes/index View.
 	end
end
