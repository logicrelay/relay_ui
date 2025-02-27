# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

require "rubocop/rake_task"

RuboCop::RakeTask.new

task default: %i[spec rubocop]

namespace :build do
  desc "Build JavaScript"
  task :js do
    sh "npm run build:js"
  end

  desc "Build CSS"
  task :css do
    sh "npm run build:css"
  end

  desc "Build all assets"
  task :assets => [:js, :css]
end

task :build => ["build:assets"]
task :default => ["build"]

CLEAN.include("vendor")