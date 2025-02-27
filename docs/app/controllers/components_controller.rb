class ComponentsController < ApplicationController
  def code_blocks = render Views::Components::CodeBlocksView.new
  def headings = render Views::Components::HeadingsView.new
  def text = render Views::Components::TextView.new
end
