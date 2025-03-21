# frozen_string_literal: true

class RUI::Flash < RUI::Base
  def initialize(variant = "alert")
    @variant = variant
  end

  def view_template
    div(role: "alert", data: { controller: "flash" }, class: "lg:max-w-lg border p-3 lg:px-5 lg:py-3 rounded-lg opacity-0 transition-opacity duration-100 ease-in-out " + classes) do
      div(class: "flex flex-row items-center justify-between gap-3") do
        div(class: "w-6") { render RUI::Icon.new(icon) }
        p(class: "w-full") { yield }
        button(class: "w-6 hover:cursor-pointer", data: { action: "flash#close" }) do
          render RUI::Icon.new("x")
        end
      end
    end
  end

  private

  def classes = {
    "notice" => "bg-blue-50 text-blue-900 border-blue-500",
    "success" => "bg-green-50 text-green-900 border-green-500",
    "alert" => "bg-yellow-50 text-yellow-900 border-yellow-500",
    "failure" => "bg-red-50 text-red-900 border-red-500"
  }.fetch @variant, "bg-zinc-50 text-zinc-900 border-zinc-500"

  def icon = {
    "notice" => "info-circle",
    "success" => "circle-check",
    "alert" => "alert-triangle",
    "failure" => "flag"
  }.fetch @variant, "alert-circle-filled"

  class Wrapper < RUI::Base
    def view_template(&)
      div(class: "fixed left-0 lg:left-auto bottom-0 right-0 m-5 lg:m-10 flex flex-col gap-3", &)
    end
  end

  module Helper
    def success(message)
      flash[:success] = message
    end

    def failure(message)
      flash[:failure] = message
    end
  end
end
