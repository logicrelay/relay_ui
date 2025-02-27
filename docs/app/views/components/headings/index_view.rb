class Views::Components::Headings::IndexView < Views::Base
  QUICK_BROWN_FOX = "The quick brown fox jumps over the lazy dog"

  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RelayUi::Headings::H1.new { "Headings" }
      render RelayUi::Text::Large.new do
        "This section demonstrates the different heading styles available in RelayUi."
      end

      render Components::Description.new(component_name: "H1") do
        render RelayUi::Headings::H1.new { QUICK_BROWN_FOX }
        render RelayUi::CodeBlock.new do
<<-RUBY
render RelayUi::Headings::H1.new do
  "The quick brown fox jumps over the lazy dog"
end
RUBY
        end
      end

      render Components::Description.new(component_name: "H2") do
        render RelayUi::Headings::H2.new { QUICK_BROWN_FOX }
        render RelayUi::CodeBlock.new do
<<-RUBY
render RelayUi::Headings::H2.new do
  "The quick brown fox jumps over the lazy dog"
end
RUBY
        end
      end

      render Components::Description.new(component_name: "H3") do
        render RelayUi::Headings::H3.new { QUICK_BROWN_FOX }
        render RelayUi::CodeBlock.new do
<<-RUBY
render RelayUi::Headings::H3.new do
  "The quick brown fox jumps over the lazy dog"
end
RUBY
        end
      end

      render Components::Description.new(component_name: "H4") do
        render RelayUi::Headings::H4.new { QUICK_BROWN_FOX }
        render RelayUi::CodeBlock.new do
<<-RUBY
render RelayUi::Headings::H4.new do
  "The quick brown fox jumps over the lazy dog"
end
RUBY
        end
      end

      render Components::Description.new(component_name: "H5") do
        render RelayUi::Headings::H5.new { QUICK_BROWN_FOX }
        render RelayUi::CodeBlock.new do
<<-RUBY
render RelayUi::Headings::H5.new do
  "The quick brown fox jumps over the lazy dog"
end
RUBY
        end
      end

      render Components::Description.new(component_name: "H6") do
        render RelayUi::Headings::H6.new { QUICK_BROWN_FOX }
        render RelayUi::CodeBlock.new do
<<-RUBY
render RelayUi::Headings::H6.new do
  "The quick brown fox jumps over the lazy dog"
end
RUBY
        end
      end
    end
  end
end
