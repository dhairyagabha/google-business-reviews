# frozen_string_literal: true

module Google
	module Business
		module Reviews
			class Author
				attr_reader :name, :url, :avatar

				def initialize(name, url, avatar)
					@name = name
					@url = url
					@avatar = avatar
				end

				def to_s
					"Name: #{name}, Url: #{url}, Avatar: #{avatar}"
				end

				def as_json
					{
						name: name,
						url: url,
						avatar: avatar
					}
				end
			end
		end
	end
end
