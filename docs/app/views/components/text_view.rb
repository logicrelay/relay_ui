# frozen_string_literal: true

class Views::Components::TextView < Views::Base
  LOREM_IPSUM = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Unsafe.new do
<<-STRING
# RUI::Text

`RUI::Text` is a namespace for text components in RelayUI. These components are used to render text in different sizes and styles. This page demonstrates the different text styles available in RelayUi.

Note that Text components only render plain text. For rich text content, use the [RUI::Markdown](#{markdown_component_path}) component.

## RUI::Text::Small
STRING
      end

      render RUI::Text::Small.new { LOREM_IPSUM }

      render RUI::Markdown::Unsafe.new do
<<-STRING
```ruby
render RUI::Text::Small.new { LOREM_IPSUM }
```

## RUI::Text::Medium

STRING
      end

      render RUI::Text::Medium.new { LOREM_IPSUM }

      render RUI::Markdown::Unsafe.new do
<<-STRING
```ruby
render RUI::Text::Medium.new { LOREM_IPSUM }
```

## RUI::Text::Large

STRING
      end

      render RUI::Text::Large.new { LOREM_IPSUM }
      render RUI::Markdown::Unsafe.new do
<<-STRING
```ruby
render RUI::Text::Large.new { LOREM_IPSUM }
```
STRING
      end
    end
  end
end
