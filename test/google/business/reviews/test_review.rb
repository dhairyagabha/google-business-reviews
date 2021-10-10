# frozen_string_literal: true

require "minitest/autorun"
require "google/business/reviews/review"
require "google/business/reviews/author"

module Google
	module Business
		module Reviews
			class ReviewTest < Minitest::Test
				def setup
					@review = Google::Business::Reviews::Review.new({
																																																						author_name: "John Doe",
																																																						author_url: "https://authors.google.com/john-doe",
																																																						language: "en",
																																																						profile_photo_url: "https://authors.google.com/john-doe/avatar.jpg",
																																																						rating: 5,
																																																						relative_time_description: "1 day ago",
																																																						text: "This gem is awesome!",
																																																						time: 1630025951
																																																					})
				end

				def test_author
					author = Google::Business::Reviews::Author.new("John Doe", "https://authors.google.com/john-doe", "https://authors.google.com/john-doe/avatar.jpg")
					assert_equal @review.author.name, author.name
					assert_equal @review.author.url, author.url
					assert_equal @review.author.avatar, author.avatar
				end

				def test_language
					assert_equal @review.language, "en"
				end

				def test_rating
					assert_equal @review.rating, 5
				end

				def test_relative_time_description
					assert_equal @review.relative_time, "1 day ago"
				end

				def test_content
					assert_equal @review.content, "This gem is awesome!"
				end
			end
		end
	end
end
