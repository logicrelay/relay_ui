class ComponentsController < ApplicationController
  def badges = render Views::Components::BadgesView.new
  def buttons = render Views::Components::ButtonsView.new
  def code_blocks = render Views::Components::CodeBlocksView.new
  def headings = render Views::Components::HeadingsView.new
  def lists = render Views::Components::ListsView.new
  def navigation = render Views::Components::NavigationView.new
  def slideout = render Views::Components::SlideoutView.new
  def text = render Views::Components::TextView.new
end
