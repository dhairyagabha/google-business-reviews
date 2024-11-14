# frozen_string_literal: true

require "minitest/autorun"
require "google/business/reviews/version"

module Google
	module Business
		module Reviews
			class VersionTest < Minitest::Test
				def test_version
					assert_equal Google::Business::Reviews::VERSION, "0.1.2"
				end
			end
		end
	end
end
