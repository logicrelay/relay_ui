# frozen_string_literal: true

class Views::Components::IconsView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Safe.new do
<<-STRING
# Icons

`RUI::Icon` is a component that renders an icon from the [tabler icons](https://tabler.io/icons) library. This component is used across the entire RUI library to render icons. The icon will take the dimensions of the parent element, so it is important to set the size of the parent element to control the size of the icon.

## Parameters
```ruby
RUI::Icon.new(icon, **attrs)
```

`icon` _**(string)**_ (required)
→ The [tabler icon](https://tabler.io/icons) to be used for this link.

`**attrs` _**(hash)**_ (optional)
→ Any additional attributes to be applied to the <button> HTML element.

## Example
STRING
      end

      div class: "my-4 size-10" do
        render RUI::Icon.new "star"
      end

      render RUI::Markdown::Unsafe.new do
<<-STRING

```ruby
div class: "size-10" do
  render RUI::Icon.new "star"
end
```


STRING
      end
    end
  end
end
