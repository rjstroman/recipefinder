class RecipesController < ApplicationController
  def index
  	# From the QueryString
  	if @search == nil
  		@keyword = "chocolate"
  	else
  		@keyword = @search
 		end

  	# Code could be added here to get the search term from recipes/index View.
  end
end
