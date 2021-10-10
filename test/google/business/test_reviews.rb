# frozen_string_literal: true

require "minitest/autorun"
require "google/business/reviews"

module Google
	module Business
		module Reviews
			class IntegrationTest < Minitest::Test
				include Google::Business::Reviews

				# Google::Business::Reviews -> get_business_reviews
				# -------------------------
				# Since the API JSON response has been tested with
				# Google::Business::Reviews::Review class, stub
				# request is not necessary.

				def test_request_denied
					assert_raises StandardError do
						get_business_reviews("testApiKey", "place1234")
					end
				end
			end
		end
	end
end
