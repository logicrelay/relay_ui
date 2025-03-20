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

      div class: "flex flex-col gap-3" do
        render RUI::Links::Primary.new(
          href: flash_trigger_path(
            notice: "This is a notice message! You can put your own text here."
          )
        ) { "Flash Notice" }

        render RUI::Links::Primary.new(
          href: flash_trigger_path(
            success: "This is a success message! You can put your own text here."
          )
        ) { "Flash Success" }

        render RUI::Links::Primary.new(
          href: flash_trigger_path(
            alert: "This is an alert message! You can put your own text here."
          )
        ) { "Flash Alert" }

        render RUI::Links::Primary.new(
          href: flash_trigger_path(
            failure: "This is a failure message! You can put your own text here."
          )
        ) { "Flash Failure" }
      end
    end
  end
end
