# frozen_string_literal: true

class Views::Components::AlertsView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Safe.new do
<<-STRING
# Alerts

`RUI::Alert` stuff

## Examples
STRING
      end

      render RUI::Links::Primary.new(icon: "rocket", href: flash_trigger_path) { "Lauch Success Alert" }
    end
  end
end
