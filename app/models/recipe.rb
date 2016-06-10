class Recipe < ActiveRecord::Base
	include HTTParty

	default_params key: ENV["FOOD2FORK_KEY"]
	key_value = ENV['FOOD2FORK_KEY']
	hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork'
	# base_uri "http://food2fork.com/api"
	base_uri "http://#{hostport}/api"
	format :json

	def self.for (@keyword)
		byebug
		get("/search", query: {q: keyword})["recipes"]
	end

end
