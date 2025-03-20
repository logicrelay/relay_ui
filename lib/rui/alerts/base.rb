# frozen_string_literal: true

class RUI::Alerts::Base < RUI::Base
  def view_template
    div(role: "alert", class: "absolute left-0 lg:left-auto bottom-0 right-0 m-5 lg:m-10 lg:max-w-lg border p-3 lg:px-5 lg:py-3 rounded-lg #{container_classes}") do
      div(class: "flex flex-row items-center justify-between gap-3") do
        div class: "w-5" do
          render RUI::Icon.new(icon)
        end
        p(class: "w-full") { yield }
        div class: "w-5" do
          render RUI::Icon.new("x")
        end
      end
    end
  end
end
