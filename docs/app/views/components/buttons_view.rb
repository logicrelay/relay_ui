class Views::Components::ButtonsView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Headings::H1.new { "Buttons" }
      render RUI::Text::Large.new do
        "This section demonstrates the different button styles available in RelayUi."
      end

      render Components::Description.new("Primary Button") do
        div class: "flex flex-row gap-4" do
          render RUI::Buttons::Primary.new { "Send" }
          render RUI::Buttons::Primary.new(icon: "send") { "Send" }
          render RUI::Buttons::Primary.new(icon: "send")
        end
        render RUI::CodeBlock.new do
<<-RUBY
render RUI::Buttons::Primary.new { "Send" }
render RUI::Buttons::Primary.new(icon: "send") { "Send" }
render RUI::Buttons::Primary.new(icon: 'send')
RUBY
        end
      end

      render Components::Description.new("Secondary Button") do
        div class: "flex flex-row gap-4" do
          render RUI::Buttons::Secondary.new { "Cancel" }
          render RUI::Buttons::Secondary.new(icon: "x") { "Cancel" }
          render RUI::Buttons::Secondary.new(icon: "x")
        end
        render RUI::CodeBlock.new do
<<-RUBY
render RUI::Buttons::Secondary.new { "Cancel" }
render RUI::Buttons::Secondary.new(icon: "x") { "Cancel" }
render RUI::Buttons::Secondary.new(icon: "x")
RUBY
        end
      end

      render Components::Description.new("Outline Button") do
        div class: "flex flex-row gap-4" do
          render RUI::Buttons::Outline.new { "Remove" }
          render RUI::Buttons::Outline.new(icon: "square-rounded-minus") { "Remove" }
          render RUI::Buttons::Outline.new(icon: "square-rounded-minus")
        end
        render RUI::CodeBlock.new do
<<-RUBY
render RUI::Buttons::Outline.new { "Remove" }
render RUI::Buttons::Outline.new(icon: "square-rounded-minus") { "Remove" }
render RUI::Buttons::Outline.new(icon: "square-rounded-minus")
RUBY
        end
      end

      render Components::Description.new("Destructive Button") do
        div class: "flex flex-row gap-4" do
          render RUI::Buttons::Destructive.new { "Delete" }
          render RUI::Buttons::Destructive.new(icon: "trash") { "Delete" }
          render RUI::Buttons::Destructive.new(icon: "trash")
        end
        render RUI::CodeBlock.new do
<<-RUBY
render RUI::Buttons::Destructive.new { "Delete" }
render RUI::Buttons::Destructive.new(icon: "trash") { "Delete" }
render RUI::Buttons::Destructive.new(icon: "trash")
RUBY
        end
      end

      render Components::Description.new("Ghost Button") do
        div class: "flex flex-row gap-4" do
          render RUI::Buttons::Ghost.new { "Show Me" }
          render RUI::Buttons::Ghost.new(icon: "eye") { "Show Me" }
          render RUI::Buttons::Ghost.new(icon: "eye")
        end
        render RUI::CodeBlock.new do
<<-RUBY
render RUI::Buttons::Ghost.new { "Show Me" }
render RUI::Buttons::Ghost.new(icon: "eye") { "Show Me" }
render RUI::Buttons::Ghost.new(icon: "eye")
RUBY
        end
      end

      render Components::Description.new("Link Button") do
        div class: "flex flex-row gap-4" do
          render RUI::Buttons::Link.new { "Click here to do things!" }
        end
        render RUI::CodeBlock.new do
<<-RUBY
render RUI::Buttons::Link.new { "Click here to do things!" }
RUBY
        end
      end
    end
  end
end
