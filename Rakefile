# frozen_string_literal: true

require "bundler/gem_tasks"
require "rubocop/rake_task"
require "rake/testtask"

RuboCop::RakeTask.new

task default: :rubocop

Rake::TestTask.new do |t|
	t.libs << "test"
	t.libs << "lib"
	t.test_files = FileList["test/**/test_*.rb"]
end
