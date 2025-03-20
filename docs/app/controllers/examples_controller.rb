# frozen_string_literal: true

class ExamplesController < ApplicationController
  def flash_example
    render Views::Components::AlertsView.new
  end

  def flash_trigger
    redirect_to flash_example_path, flash: { success: "Success message" }
  end

  def slideout = render Views::Examples::SlideoutView.new
end
