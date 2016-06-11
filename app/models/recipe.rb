class Recipe < ActiveRecord::Base
	include HTTParty

	default_params key: ENV["FOOD2FORK_KEY"]
	key_value = ENV['FOOD2FORK_KEY']
	hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'food2fork.com'
	base_uri "http://#{hostport}/api"
	format :json
	# base_uri "http://food2fork.com/api"

	def self.for (keyword)
		# @hash_test = { "title" => "Title1", "social_rank" => "five"} 
		# @hash_test = { "title" => "Title2", "social_rank" => "four"} 
		get("/search", query: {q: keyword})["recipes"]
	end
end
