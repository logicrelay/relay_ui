# frozen_string_literal: true

class Views::Components::FlashesView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Safe.new do
<<-STRING
# Flashes

`RUI::Flash` stuff

## Examples
STRING
      end

      div class: "flex flex-col gap-3" do
        div do
          render RUI::Links::Primary.new(
            href: flash_trigger_path(
              notice: "This is a notice message! You can put your own text here."
            )
          ) { "Flash Notice" }
        end

        div do
          render RUI::Links::Primary.new(
            href: flash_trigger_path(
              success: "This is a success message! You can put your own text here."
            )
          ) { "Flash Success" }
        end

        div do
          render RUI::Links::Primary.new(
            href: flash_trigger_path(
              alert: "This is an alert message! You can put your own text here."
            )
          ) { "Flash Alert" }
        end

        div do
          render RUI::Links::Primary.new(
            href: flash_trigger_path(
              failure: "This is a failure message! You can put your own text here."
            )
          ) { "Flash Failure" }
        end

        div do
          render RUI::Links::Primary.new(
            href: flash_trigger_path(
              notice: "This is a notice message! You can put your own text here.",
              alert: "This is an alert message! You can put your own text here."
            )
          ) { "Flash Multiple" }
        end
      end
    end
  end
end
