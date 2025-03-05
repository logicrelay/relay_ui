class ExamplesController < ApplicationController
  def slideout = render Views::Examples::SlideoutView.new
end
