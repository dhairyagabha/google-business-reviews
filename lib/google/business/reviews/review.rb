# frozen_string_literal: true

require_relative "author"

module Google
	module Business
		module Reviews
			class Review
				attr_reader :author, :language, :rating, :content, :time, :relative_time

				def initialize(rev)
					@author = Google::Business::Reviews::Author.new(rev["author_name"], rev["author_url"], rev["profile_photo_url"])
					@language = rev["language"]
					@rating = rev["rating"]
					@content = rev["text"]
					@time = Time.at(rev["time"])
					@relative_time = rev["relative_time_description"]
				end

				def to_s
					"#{author.name} wrote #{content} about #{relative_time}"
				end

				def as_json
					{
						author: author.to_json,
						language: language,
						rating: rating,
						content: content,
						time: time,
						relative_time: relative_time
					}
				end
			end
		end
	end
end
