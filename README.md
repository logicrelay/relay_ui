# RelayUI

> [!WARNING]
> This project is extremely new, and we're still working out the kinks. While it is just being used for the first time in new production apps, we're not yet ready to recommend it quite yet. It's highly likely that the API will change frequently in ways that will be extremely disruptive to your codebase. Use at your own risk for now, and we'll update this warning when we're ready to recommend it. Look for a 1.0.0 release sometime in Q2 2025.

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

# Installation

### First, add the gem to your `Gemfile`:

```ruby
gem 'relay_ui'
```

### Then install your gems:

```shell
bundle install
```

### Or install it directly:

```shell
gem install relay_ui
```

That's it! All of the basic functionality of the UI kit is now available to you. For certain components that require additional elements (like stimulus controllers), you'll need to include those separately. They will be documented in the component's usage instructions.

# Usage

The usage docs can be found at https://www.relayui.com

# Contributing

**If you're interested in contributing on this project we'd love to chat with you on [our Discord server](https://discord.gg/wPyvK87KFe).**

There's a lot of work to be done on this project, and we're always looking for help. Here's some details on how we're going about building this kit:

- We have a [public roadmap](https://github.com/orgs/logicrelay/projects/14/views/3) that we're using to track features that are slated for the next release and features that haven't been prioritized yet.
- We're using [Github Projects](https://github.com/orgs/logicrelay/projects/14/views/1) to track WIP features and bugs.
- We'll generally spec out a milestone in a JIT fashion as the previous milestone is released.

## Prerequisites

There are a couple of things you'll need to do to get your environment set up for contributing to this project:

- **mise** - We use [`mise`](https://mise.jdx.dev/getting-started.html) to manage our development environment and provide easy access to the tools we need to work on the project.
- **bundler config** - You'll need to set the local path to the root directory of the project by running the following command in the root of the repo: `bundle config local.relay_ui /path/to/relay_ui`. This will allow you to work on the UI kit locally and see changes in real time.
- **LiveReload** - [LiveReload](https://addons.mozilla.org/en-US/firefox/addon/livereload/) is not a must have, but it's a nice to have. It will automatically refresh your browser when you're working on the UI kit locally.

## Tooling

There are three processes to run locally when developing...
- `mise run watch` starts the watch process that generates a combined CSS file using TailwindCSS.
- `mise run guard` runs `guard` and `guard-livereload` (optional)
- `mise run server` starts the local server.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

[Maintained by the team @ LogicRelay](https://www.logicrelay.com/)

## Code of Conduct

Everyone interacting in the RelayUi project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/relay_ui/blob/main/CODE_OF_CONDUCT.md).
