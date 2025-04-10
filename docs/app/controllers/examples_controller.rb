# frozen_string_literal: true

class ExamplesController < ApplicationController
  def flash_example
    render Views::Components::FlashesView.new
  end

  def flash_trigger
    case params[:type]
    when "notice"
      redirect_to flash_example_path, notice: "This is a notice message!"
    when "success"
      redirect_to flash_example_path, success: "This is a success message!"
    when "alert"
      redirect_to flash_example_path, alert: "This is an alert message!"
    when "failure"
      redirect_to flash_example_path, failure: "This is a failure message!"
    when "multiple"
      redirect_to flash_example_path,
      success: "This is a success message!",
      failure: "This is a failure message!"
    else
      redirect_to flash_example_path, notice: "Something has gone wrong!"
    end
  end

  def slideout = render Views::Examples::SlideoutView.new

  private
end
