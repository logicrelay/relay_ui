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

  def table
    employees = Array.new(15) do
      first_name = Faker::Name.first_name
      last_name = Faker::Name.last_name
      Employee.new(
        first_name:,
        last_name:,
        email: Faker::Internet.email(name: first_name, domain: "relayui.com"),
        phone: "(#{Faker::PhoneNumber.area_code}) #{Faker::PhoneNumber.exchange_code}-#{Faker::PhoneNumber.subscriber_number}"
      )
    end
    render Views::Components::TableView.new(employees)
  end

  def text = render Views::Components::TextView.new
end
