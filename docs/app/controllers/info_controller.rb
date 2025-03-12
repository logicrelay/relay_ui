class InfoController < ApplicationController
  def about = render Views::Info::AboutView.new
  def installation = render Views::Info::InstallationView.new
  def contributing = render Views::Info::ContributingView.new
end
