class InfoController < ApplicationController
  def about = render Views::Info::AboutView.new
end
