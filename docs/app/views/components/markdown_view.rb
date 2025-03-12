class Views::Components::MarkdownView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Unsafe.new do
<<-MARKDOWN
# RUI::Markdown

`RUI::Markdown` is a namespace containing components that aid in rendering Markdown. There are sane defaults provided for rendered markdown elements like links and lists. In fact, this entire page is just one big Markdown block.

## RUI::Markdown::Safe

`RUI::Markdown::Safe` should be considered the "default" Markdown component and can be used for any Markdown content, including user-generated content. HTML elements will be escaped to prevent against any XSS concerns. The component accepts a block containing a string, often as a [heredoc](https://ruby-doc.org/core-2.5.0/doc/syntax/literals_rdoc.html#label-Here+Documents). The contents of the string will be rendered as markdown.

_**Important**: When using a STRING heredoc as in the example, be sure that the string is NOT indented. Otherwise, the markdown will not render correctly._

Example:
```ruby
  render RUI::Markdown::Safe.new do
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

## RUI::Markdown::Unsafe
`RUI::Markdown::Unsafe` is for content that is trusted, eg: from a personal blog or hardcoded content. HTML elements will not be escaped which preserves the behavior of code blocks. The component again accepts a block containing a string, often as a heredoc.

Here is an example of a code block:

```ruby
  render RUI::Markdown::Unsafe.new do
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
