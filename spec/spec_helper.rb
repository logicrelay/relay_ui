# frozen_string_literal: true

require "relay_ui"
require "phlex"
require "nokogiri"

Dir[File.expand_path("../../lib/rui/*.rb", __FILE__)].each { |f| require f }
Dir[File.expand_path("../../lib/rui/**/*.rb", __FILE__)].each { |f| require f }

RSpec.configure do |config|
  config.example_status_persistence_file_path = ".rspec_status"
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
