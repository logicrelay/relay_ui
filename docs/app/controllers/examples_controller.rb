# frozen_string_literal: true

class ExamplesController < ApplicationController
  def flash_example
    render Views::Components::FlashesView.new
  end

  def flash_trigger
    permitted_params = params.permit(:notice, :success, :alert, :failure)

    redirect_to flash_example_path, flash: permitted_params
  end

  def slideout = render Views::Examples::SlideoutView.new

  private
end
