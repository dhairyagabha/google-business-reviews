# frozen_string_literal: true

require_relative "reviews/version"
require_relative "reviews/review"
require_relative "reviews/author"
require "uri"
require "net/http"
require "json"
require "time"

module Google
	module Business
		module Reviews
			# Service to fetch reviews based on place_id
			class Error < StandardError; end

			ENDPOINT = "https://maps.googleapis.com/maps/api/place/details/json"

			def get_business_reviews(api_key, place_id)
				url = URI("#{ENDPOINT}?key=#{api_key}&place_id=#{place_id}&fields=review")

				https = Net::HTTP.new(url.host, url.port)
				https.use_ssl = true

				request = Net::HTTP::Get.new(url)
				response = https.request(request)
				response = JSON.parse(response.read_body)

				raise StandardError, "[google-business-reviews] #{response["status"]}: #{response["error_message"]}" if response["status"] != "OK"

				reviews = response["result"]["reviews"].map { |r| Review.new r }
				reviews || []
			end
		end
	end
end
