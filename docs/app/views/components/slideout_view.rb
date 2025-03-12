class Views::Components::SlideoutView < Views::Base
  include Phlex::Rails::Helpers::TurboFrameTag

  def view_template
    render Views::Layouts::ApplicationLayout.new do
      turbo_frame_tag "slideout"

      render RUI::Markdown.new(html_safe: false) do
<<-STRING
# RUI::Slideout

The `RUI::Slideout` component is a container that slides out from the right side of the screen. It is useful for displaying additional content without navigating away from the current page.

## Example

Try me!
STRING
      end

        render RUI::Links::Primary.new(
          href: slideout_example_path,
          icon: "arrow-left-bar",
          data: { turbo_frame: "slideout" }
        ) { "Open Slideout" }

      render RUI::Markdown.new(html_safe: false) do
<<-STRING
## Usage

Follow these steps to create a slideout in your RelayUi application:

### Include the turbo frame in your view:

```ruby
turbo_frame_tag "slideout"
```

### Install the stimulus controller from npm:

```shell
npm install @relay_ui/slideout
# or...
./bin/importmap pin @relay_ui/slideout
```

### Register the controller in your index.js:

```javascript
import SlideoutController from "@relay_ui/slideout"
application.register("slideout", SlideoutController)
```

### Create a view for the slideout contents and wrap it in a `RUI::Slideout` component:

```ruby
render RUI::Slideout.new do
  div(class: "flex flex-row justify-between items-center p-10") do
    render RUI::Headings::H2.new { "Slideout" }

    # Note the href and data...
    render RUI::Links::Destructive.new(
      href: "#",
      icon: "x",
      data: { action: "slideout#hide" }
    )
  end
end
```

### Add a button to trigger the slideout:

```ruby
render RUI::Buttons::Primary.new(
  href: slideout_example_path,
  data: { turbo_frame: 'slideout' }
) { "Open Slideout" }
```
STRING
      end
    end
  end
end
