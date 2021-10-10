# frozen_string_literal: true

require "minitest/autorun"
require "google/business/reviews/author"

module Google
	module Business
		module Reviews
			class AuthorTest < Minitest::Test
				def setup
					@author = Google::Business::Reviews::Author.new("John Doe", "https://authors.google.com/john-doe",
																																																					"https://authors.google.com/john-doe/avatar.jpg")
				end

				def test_name
					assert_equal @author.name, "John Doe"
				end

				def test_url
					assert_equal @author.url, "https://authors.google.com/john-doe"
				end

				def test_avatar
					assert_equal @author.avatar, "https://authors.google.com/john-doe/avatar.jpg"
				end

				def test_as_json
					assert_equal @author.as_json, { name: "John Doe",
																																					url: "https://authors.google.com/john-doe",
																																					avatar: "https://authors.google.com/john-doe/avatar.jpg" }
				end

				def test_to_s
					assert_equal(
						@author.to_s,
						"Name: John Doe, Url: https://authors.google.com/john-doe, Avatar: https://authors.google.com/john-doe/avatar.jpg"
					)
				end
			end
		end
	end
end
