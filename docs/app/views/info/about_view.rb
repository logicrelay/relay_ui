# frozen_string_literal: true

class Views::Info::AboutView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      div(class: "flex flex-col gap-2 bg-red-50 border border-red-700 text-red-700 p-5 rounded") do
        div(class: "flex flex-row items-center gap-2") do
          div class: "size-6" do
            render RUI::Icon.new("alert-circle")
          end
          span(class: "font-bold") { "Warning" }
        end
        p do
          "This project is extremely new, and we're still working out the kinks. While it is just being used for the first time in new production apps, we're not yet ready to recommend it quite yet. It's highly likely that the API will change frequently in ways that will be extremely disruptive to your codebase. Use at your own risk for now, and we'll update this warning when we're ready to recommend it. Look for a 1.0.0 release sometime in Q2 2025."
        end
      end

      render RUI::Markdown::Safe.new do
<<-STRING
# About RelayUI

RelayUI is a set of highly prescriptive UI elements written in Phlex and designed for Ruby and Rails applications. We know what you're thinking: "Another UI kit? Really?" But hear us out...

We generally see two types of UI kits available today:
- **Highly flexible and customizable UI kits** - These are great for building consumer-facing apps where you need to have a unique look and feel, but they can create a lot of overhead for developers who just want to get business value out the door quickly. Many of them also rely on code generation, and we wanted a solution that could be updated via bundler.
- **Paid UI kits** - These are great for businesses that want to get something out the door quickly and don't mind paying for it, but we like open-source software and we think that there's a place for a free, easy-to-use UI kit.

This is why RelayUI was created. It's purposefully inflexible, meant to provide a baseline set of functionality that covers 80-90% of use cases so developers can skip decisions like what icons to use or how to style buttons and focus on the stuff that matters.

RelayUI is supported by [LogicRelay](https://www.logicrelay.com), a software development agency that specializes in rapid creation of business software. We created RelayUI to help us build software faster and more consistently, and we're sharing it with the world in the hopes that it will help others do the same.

## Why Phlex?

[Phlex](https://github.com/phlex-ruby/phlex) is a Ruby-based DSL for building HTML views and components. After experimenting with [ViewComponents](https://viewcomponent.org/) and using the gem in some projects, we found the differentiation between views and presenter logic to be cumbersome at scale. Phlex provides the power of ruby in your views without the need for a separate presenter layer, and it's fast. Really fast.

Our Phlex components [can be rendered in plain-old `erb` files](https://www.phlex.fun/components/rendering.html#rendering-phlex-components-in-erb), but we think you'll find that the Phlex DSL is so easy to use that you'll want to use it everywhere.

## The RUI Namespace

All of RelayUI's components are housed in the `RUI::` namespace. This turns your IDE's autocomplete into a powerful tool for building UIs quickly. Just type `RUI::` and see what's available!

With this in mind, we prefer pulling basic variants up to the model level. Whereas many UI kits may specify variants via parameters (eg: `Component.new(variant: :primary)`), we prefer to give major variants class-level importance. So, we'll opt for patterns like `RUI::Buttons::Primary` and `RUI::Buttons::Secondary` instead.

## Using TailwindCSS

RelayUI uses [TailwindCSS v4](https://tailwindcss.com/) for styling under the hood. One of the challenges we aimed to solve is how to include the styles Tailwind provides in a way that doesn't collide with any other CSS styles or frameworks being used. For example, we wanted to make sure RelayUI still worked well in projects that used Tailwind v3, or even Bootstrap.

For that reason, we've decided to prefix our CSS classes with `rui:`. This way, RelayUI is able to come out of the box with all of the styles you need to make our components work, but you can choose to use any CSS framework you want and not risk any CSS class conflicts or collisions.
STRING
      end
    end
  end
end
