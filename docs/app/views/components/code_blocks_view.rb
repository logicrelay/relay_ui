class Views::Components::CodeBlocksView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Headings::H1.new { "Code Blocks" }
      render RUI::Text::Large.new do
        "This section demonstrates how to render a code block in RelayUI."
      end

      render Components::Description.new("Ruby (Default)") do
        render RUI::CodeBlock.new do
        <<-RUBY
def sum_eq_n?(arr, n)
  return true if arr.empty? && n == 0
  arr.product(arr).reject { |a,b| a == b }.any? { |a,b| a + b == n }
end
        RUBY
        end
                render RUI::CodeBlock.new do
        <<-RUBY
render RUI::CodeBlock.new do
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

      render Components::Description.new("Javascript (Override)") do
        render RUI::CodeBlock.new(language: "javascript") do
          <<-JS
let i = 0;
while (i < 5) {
  console.log(i);
  i++;
}
          JS
        end
      render RUI::CodeBlock.new do
        <<-JS
render RUI::CodeBlock.new(language: "javascript") do
  \<<-JS
def sum_eq_n?(arr, n)
  return true if arr.empty? && n == 0
  arr.product(arr).reject { |a,b| a == b }.any? { |a,b| a + b == n }
end
  \JS
end
        JS
        end
      end
    end
  end
end
