# frozen_string_literal: true

class ExamplesController < ApplicationController
  def slideout = render Views::Examples::SlideoutView.new
end
