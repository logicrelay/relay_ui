class Views::Components::ButtonsView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RelayUi::Headings::H1.new { "Buttons" }
      render RelayUi::Text::Large.new do
        "This section demonstrates the different button styles available in RelayUi."
      end

      render Components::Description.new("Primary Button") do
        div class: "flex flex-row gap-4" do
          render RelayUi::Buttons::Primary.new { "Send" }
          render RelayUi::Buttons::Primary.new(icon: 'send') { "Send" }
          render RelayUi::Buttons::Primary.new(icon: 'send')
        end
        render RelayUi::CodeBlock.new do
<<-RUBY
render RelayUi::Buttons::Primary.new { "Send" }
render RelayUi::Buttons::Primary.new(icon: "send") { "Send" }
render RelayUi::Buttons::Primary.new(icon: 'send')
RUBY
        end
      end

      render Components::Description.new("Secondary Button") do
        div class: "flex flex-row gap-4" do
          render RelayUi::Buttons::Secondary.new { "Cancel" }
          render RelayUi::Buttons::Secondary.new(icon: "x") { "Cancel" }
          render RelayUi::Buttons::Secondary.new(icon: "x")
        end
        render RelayUi::CodeBlock.new do
<<-RUBY
render RelayUi::Buttons::Secondary.new { "Cancel" }
render RelayUi::Buttons::Secondary.new(icon: "x") { "Cancel" }
render RelayUi::Buttons::Secondary.new(icon: "x")
RUBY
        end
      end

      render Components::Description.new("Outline Button") do
        div class: "flex flex-row gap-4" do
          render RelayUi::Buttons::Outline.new { "Remove" }
          render RelayUi::Buttons::Outline.new(icon: "square-rounded-minus") { "Remove" }
          render RelayUi::Buttons::Outline.new(icon: "square-rounded-minus")
        end
        render RelayUi::CodeBlock.new do
<<-RUBY
render RelayUi::Buttons::Outline.new { "Remove" }
render RelayUi::Buttons::Outline.new(icon: "square-rounded-minus") { "Remove" }
render RelayUi::Buttons::Outline.new(icon: "square-rounded-minus")
RUBY
        end
      end

      render Components::Description.new("Destructive Button") do
        div class: "flex flex-row gap-4" do
          render RelayUi::Buttons::Destructive.new { "Delete" }
          render RelayUi::Buttons::Destructive.new(icon: "trash") { "Delete" }
          render RelayUi::Buttons::Destructive.new(icon: "trash")
        end
        render RelayUi::CodeBlock.new do
<<-RUBY
render RelayUi::Buttons::Destructive.new { "Delete" }
render RelayUi::Buttons::Destructive.new(icon: "trash") { "Delete" }
render RelayUi::Buttons::Destructive.new(icon: "trash")
RUBY
        end
      end

      render Components::Description.new("Ghost Button") do
        div class: "flex flex-row gap-4" do
          render RelayUi::Buttons::Ghost.new { "Show Me" }
          render RelayUi::Buttons::Ghost.new(icon: "eye") { "Show Me" }
          render RelayUi::Buttons::Ghost.new(icon: "eye")
        end
        render RelayUi::CodeBlock.new do
<<-RUBY
render RelayUi::Buttons::Ghost.new { "Show Me" }
render RelayUi::Buttons::Ghost.new(icon: "eye") { "Show Me" }
render RelayUi::Buttons::Ghost.new(icon: "eye")
RUBY
        end
      end
    end
  end
end
