class Book < ApplicationRecord
	include HTTParty

	base_uri 'https://www.googleapis.com/books/v1/volumes'

	format :json

	def self.about search_term
		get("", query: {q: "intitle:#{search_term}"})["items"] || []
	end
end
