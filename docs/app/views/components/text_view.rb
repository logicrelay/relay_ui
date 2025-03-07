class Views::Components::TextView < Views::Base
  LOREM_IPSUM = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Headings::H1.new { "Text" }
      render RUI::Text::Large.new do
        "This section demonstrates the different text styles available in RelayUi."
      end

      render Components::Description.new("Small Text") do
        render RUI::Text::Small.new { LOREM_IPSUM }
        render RUI::CodeBlock.new do
<<-RUBY
render RUI::Text::Small.new { LOREM_IPSUM }
RUBY
        end
      end

      render Components::Description.new("Medium Text") do
        render RUI::Text::Medium.new { LOREM_IPSUM }
        render RUI::CodeBlock.new do
<<-RUBY
render RUI::Text::Medium.new { LOREM_IPSUM }
RUBY
        end
      end

      render Components::Description.new("Large Text") do
        render RUI::Text::Large.new { LOREM_IPSUM }
        render RUI::CodeBlock.new do
<<-RUBY
render RUI::Text::Large.new { LOREM_IPSUM }
RUBY
        end
      end
    end
  end
end
