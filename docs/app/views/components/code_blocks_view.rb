class Views::Components::CodeBlocksView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RelayUi::Headings::H1.new { "Code Blocks" }
      render RelayUi::Text::Large.new do
        "This section demonstrates how to render a code block in RelayUI."
      end

      render Components::Description.new("Ruby") do
        render RelayUi::CodeBlock.new do
        <<-RUBY
def sum_eq_n?(arr, n)
  return true if arr.empty? && n == 0
  arr.product(arr).reject { |a,b| a == b }.any? { |a,b| a + b == n }
end
        RUBY
        end
                render RelayUi::CodeBlock.new do
        <<-RUBY
render RelayUi::CodeBlock.new do
  \<<-RUBY
def sum_eq_n?(arr, n)
  return true if arr.empty? && n == 0
  arr.product(arr).reject { |a,b| a == b }.any? { |a,b| a + b == n }
end
  \RUBY
end
        RUBY
        end
      end
    end
  end
end
