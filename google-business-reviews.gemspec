# frozen_string_literal: true

require_relative "lib/google/business/reviews/version"

Gem::Specification.new do |spec|
	spec.name = "google-business-reviews"
	spec.version = Google::Business::Reviews::VERSION
	spec.authors = ["Dhairya Gabhawala"]
	spec.email = ["gabhawaladhairya@gmail.com"]
	spec.summary = "Convenient way of adding Google Business Reviews to your application."
	spec.description = "Convenient way of adding Google Business Reviews to your application."
	spec.homepage = "https://github.com/dhairyagabha/google-business-reviews"
	spec.license = "MIT"
	spec.required_ruby_version = ">= 2.7.0"

	spec.metadata["homepage_uri"] = spec.homepage
	spec.metadata["source_code_uri"] = "https://github.com/dhairyagabha/google-business-reviews"
	spec.metadata["changelog_uri"] = "https://github.com/dhairyagabha/google-business-reviews/blob/main/CHANGELOG.md"
	spec.metadata["rubygems_mfa_required"] = "true"

	# Specify which files should be added to the gem when it is released.
	# The `git ls-files -z` loads the files in the RubyGem that have been added into git.
	spec.files = Dir.chdir(File.expand_path(__dir__)) do
		`git ls-files -z`.split("\x0").reject do |f|
			(f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
		end
	end
	spec.bindir = "exe"
	spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
	spec.require_paths = ["lib"]

	spec.add_development_dependency "minitest", "~> 5.14", ">= 5.14.4"
	spec.add_development_dependency "rubocop", "~> 1.22"
	spec.add_development_dependency "rubocop-minitest"
	spec.add_development_dependency "rubocop-rake"
end
