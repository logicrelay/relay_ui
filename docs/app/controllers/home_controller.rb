class ComponentsController < ApplicationController
  def headings = render Views::Components::Headings::IndexView.new
end
