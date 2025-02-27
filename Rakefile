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

namespace :watch do
  desc "Watch JavaScript files and rebuild on changes"
  task :js do
    sh "npm run watch:js"
  end

  desc "Watch CSS files and rebuild on changes"
  task :css do
    sh "npm run watch:css"
  end

  desc "Watch all assets and rebuild on changes"
  task :assets do
    puts "Starting asset watchers for both JS and CSS..."
    puts "Press Ctrl-C to stop watching"
    
    # Run both watchers in parallel using a basic approach that works across platforms
    trap("INT") { exit }
    
    # Fork processes for each watcher
    pid1 = Process.fork { sh "npm run watch:js" }
    pid2 = Process.fork { sh "npm run watch:css" }
    
    # Wait for any process to exit
    Process.wait(pid1)
    Process.wait(pid2)
  rescue Interrupt
    puts "\nShutting down watchers..."
  end
end

task :build => ["build:assets"]
task :watch => ["watch:assets"]
task :default => ["build"]

CLEAN.include("vendor")