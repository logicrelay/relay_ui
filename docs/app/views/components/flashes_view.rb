# frozen_string_literal: true

class Views::Components::FlashesView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Unsafe.new do
<<-STRING
# Flashes

`RUI::Flash` is a namespace wrapping multiple interrelated modules and components that serve to display flash messages in a Rails application. The aim of this component is to provide an easy-to-implement, mobile-friendly solution to showing flash messages in a Rails app.

Flashes can be dismissed manually by the user or will automatically disappear after five seconds.

## Installation

RUI uses the default Rails flash message types out of the box (`:notice` and `:alert`) while also adding two additional types (`:success` and `:failure`). To enable the additional types, include the provided helper in your `ApplicationController`:

```ruby
class ApplicationController < ActionController::Base
  include RUI::Flash::Helper
  ...
end
```

Now you can include the views either by replacing the default `_alerts.html.erb` partial or by including the following directly in your application layout:

```ruby
render RUI::Flash::Wrapper.new do
  flash.each do |type, message|
    render RUI::Flash.new(type) { message }
  end
end
```

Finally, install the JavaScript controller from NPM:

```js
import FlashController from "@relay_ui/flash";
application.register("flash", FlashController);
```

## Examples

After installing, you can trigger flash messages in your controllers using the typical methods:

```ruby
def create
  ...
  redirect_to root_path, flash: { success: "Your account was successfully created!" }
end
```

To trigger an example notice, click a button below:
STRING
      end

      div class: "flex flex-col gap-3 my-4" do
        div do
          render RUI::Links::Primary.new(
            href: flash_trigger_path(type: :notice)
          ) { "Flash Notice" }
        end

        div do
          render RUI::Links::Primary.new(
            href: flash_trigger_path(type: :success)
          ) { "Flash Success" }
        end

        div do
          render RUI::Links::Primary.new(
            href: flash_trigger_path(type: :alert)
          ) { "Flash Alert" }
        end

        div do
          render RUI::Links::Primary.new(
            href: flash_trigger_path(type: :failure)
          ) { "Flash Failure" }
        end

      render RUI::Markdown::Unsafe.new do
<<-STRING
Note that the wrapper will stack multiple flashes automatically. You can test multiple flashes below:
STRING
      end
        div do
          render RUI::Links::Primary.new(
            href: flash_trigger_path(type: :multiple)
          ) { "Flash Multiple" }
        end
      end
    end
  end
end
