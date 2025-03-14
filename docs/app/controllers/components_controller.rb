# frozen_string_literal: true

class ComponentsController < ApplicationController
  def badges = render Views::Components::BadgesView.new
  def buttons = render Views::Components::ButtonsView.new
  def cards = render Views::Components::CardsView.new
  def code_blocks = render Views::Components::CodeBlocksView.new
  def headings = render Views::Components::HeadingsView.new
  def links = render Views::Components::LinksView.new
  def lists = render Views::Components::ListsView.new
  def markdown = render Views::Components::MarkdownView.new
  def navigation = render Views::Components::NavigationView.new
  def slideout = render Views::Components::SlideoutView.new
  def text = render Views::Components::TextView.new
end
