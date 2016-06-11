class RecipesController < ApplicationController
  def index
  	@current_time = Time.now
  	 
		@search_term = params[:search] || "chocolate"
		@recipes = Recipe.for(@search_term)

 	end
end
