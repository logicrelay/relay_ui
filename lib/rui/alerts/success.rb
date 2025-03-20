# frozen_string_literal: true

module RUI::Alerts
  class Success < Base
    private

    def container_classes = "bg-green-50 text-green-900 border-green-500"

    def icon = "confetti"
  end
end
