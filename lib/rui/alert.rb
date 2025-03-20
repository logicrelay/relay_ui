# frozen_string_literal: true

class RUI::Alert < RUI::Base
  def initialize(variant = "alert")
    @variant = variant
  end

  def view_template
    div(role: "alert", class: "absolute left-0 lg:left-auto bottom-0 right-0 m-5 lg:m-10 lg:max-w-lg border p-3 lg:px-5 lg:py-3 rounded-lg " + classes) do
      div(class: "flex flex-row items-center justify-between gap-3") do
        div class: "w-6" do
          render RUI::Icon.new(icon)
        end
        p(class: "w-full") { yield }
        div class: "w-6" do
          render RUI::Icon.new("x")
        end
      end
    end
  end

  private

  def classes
    case @variant
    when "notice"
      "bg-blue-50 text-blue-900 border-blue-500"
    when "success"
      "bg-green-50 text-green-900 border-green-500"
    when "alert"
      "bg-yellow-50 text-yellow-900 border-yellow-500"
    when "failure"
      "bg-red-50 text-red-900 border-red-500"
    else
      "bg-zinc-50 text-zinc-900 border-zinc-500"
    end
  end

  def icon
    case @variant
    when "notice"
      "info-circle"
    when "success"
      "circle-check"
    when "alert"
      "alert-triangle"
    when "failure"
      "flag"
    else
      "alert-circle-filled"
    end
  end
end
