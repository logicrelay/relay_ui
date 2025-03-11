class Views::Components::MarkdownView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown.new(html_safe: false) do
<<-MARKDOWN
# RUI::Markdown

`RUI::Markdown` is RelayUI's primary component for displaying rich text content, whether that content is user-generated or static. There are sane defaults provided for rendered markdown elements like links and lists. In fact, this entire page is just one big Markdown block.

## Parameters
|Parameter|Type|Default|Description|
|---|---|---|---|
|`html_safe`|`boolean`|`true`|Whether the content of the markdown block should be html-safe. Set to `true` if the content of the block is user-generated or untrusted. Set to `false` if the content is trusted. Code blocks will not render as expected unless `html_safe` is set to `false`.|

## Usage

`RUI::Markdown` accepts a block containing a string. The contents of the string will be rendered as markdown.

_**Important**: When using a STRING heredoc as in the example, be sure that the string is NOT indented. Otherwise, the markdown will not render correctly._

Example:
```ruby
  render RUI::Markdown.new do
<<-STRING
Here is some cool markdown from [LogicRelay](https://www.logicrelay.com).

- Here is a list item
- Here's another list item
STRING
  end
```

This will be rendered as:

Here is some cool markdown from [LogicRelay](https://www.logicrelay.com).

- Here is a list item
- Here's another list item

For _**trusted**_ content that may contain code blocks, set `html_safe` to `false`:

```ruby
  render RUI::Markdown.new(html_safe: false) do
<<-STRING
```ruby
def some_method
  puts "Hello, world!"
end
```\ ‎
STRING
  end
```

## Dependencies

The following gems have been included in RelayUI to make this component work:

- [redcarpet](https://github.com/vmg/redcarpet) for rendering markdown
- [rouge](https://github.com/rouge-ruby/rouge) for syntax highlighting
MARKDOWN
      end
    end
  end
end
