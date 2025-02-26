class ComponentsController < ApplicationController
  def link
    render Views::Components::LinkView.new
  end
end
