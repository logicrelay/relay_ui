class UtilitiesController < ApplicationController
  def tailwind_merger = render Views::Utilities::TailwindMergerView.new
end
