class HomeController < ApplicationController
  def index = render Views::Home::IndexView.new
end
