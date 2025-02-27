class Views::Components::ListsView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RelayUi::Headings::H1.new { "Lists" }
      render RelayUi::Text::Large.new do
        "This section demonstrates the different list styles available in RelayUi."
      end

      render Components::Description.new("Unordered Lists") do
        render RelayUi::Lists::Unordered.new do |list|
          list.item { "Item" }
          list.item { "Another Item" }
          list.item { "Yet Another Item" }
        end
        render RelayUi::CodeBlock.new do
<<-RUBY
render RelayUi::Lists::Unordered.new do |list|
  list.item { "Item" }
  list.item { "Another Item" }
  list.item { "Yet Another Item" }
end
RUBY
        end
      end

      render Components::Description.new("Ordered Lists") do
        render RelayUi::Lists::Ordered.new do |list|
          list.item { "Item Number One" }
          list.item { "Item Number Two" }
          list.item { "Item Number Three" }
        end
        render RelayUi::CodeBlock.new do
<<-RUBY
render RelayUi::Lists::Ordered.new do |list|
  list.item { "Item Number One" }
  list.item { "Item Number Two" }
  list.item { "Item Number Three" }
end
RUBY
        end
      end
    end
  end
end
