# RelayUI

> [!WARNING]
> This is a _very_ new gem. The API is still emerging and changing extremely rapidly. You may even find that this gem doesn't respect [semver](https://semver.org/) principles at this stage. Use at your own risk until you see this gem hit v1.0.0. We released this publicly in hopes of connecting with potential contributors. If that is you, feel free to [join our Discord](https://discord.gg/wPyvK87KFe)!

RelayUI is an opinionated UI kit for Ruby and Rails apps designed for speed of development. It is written in Phlex, uses TailwindCSS for styling and Hotwire for interactivity.

[Read more about the UI kit on our documentation site.](https://www.relayui.com)

RelayUI is based on the following principles:
- **Ease of use over flexibility** - Many similar UI kits are built with customization in mind, making them flexible at the cost of complexity. RelayUI prioritizes an intuitive and concise DSL at the cost of flexibility.
- **No code generation** - This is a true gem, not a generator. The UI elements contained within are exposed to your app via the `RUI::` namespace, and updates to the gem include updates to its underlying components and stylesheets.
- **Prescriptive selection of companion gems** - We've included gems like `tabler_icons_ruby` and others that bring a ton of functionality without any cognitive overhead. We want the experience with this gem to be very turn-key. Choosing a different icon library isn't going to be the difference between failure and success for your product, so don't spend any time considering it!
- **Subclassing over heavy configuration** - Whenever possible we try and pull key variant indicators up to the class name level, so we'd opt for something like `RUI::Button::Primary` over `RUI::Button(variant: :primary)`. This brings key design decisions up to the class level, turning your IDE's autocomplete into a search engine for available component variants. To the extent that these variants have parameters to be passed, the lists are very small and direct, focusing on composition over customization.

## Installation

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add relay_ui
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install relay_ui
```

## Usage

The usage docs can be found at https://www.relayui.com

## Development

If you're interested in contributing on this project we'd love to have you on [our Discord server](https://discord.gg/wPyvK87KFe).

This repo uses [mise](https://mise.jdx.dev/getting-started.html) for dev env config. If you want to work on this project locally, follow these instructions...

1. Install gems in both the gem and docs directories: `bundle install && cd docs && bundle install`
1. Copy `.env.example` to a new file `.env` and set an environment variable `RELAY_UI_PATH` that points to the path to this repo on your local machine.
1. Start the watcher to begin generating CSS: `mise run watch`
1. Run the docs server: `./docs/bin/dev`

> [!TIP]
> You can get livereload functionality in development by installing the [livereload plugin for Firefox](https://addons.mozilla.org/en-US/firefox/addon/livereload/) and running Guard from the root of the repo: `bundle exec guard`. Also be sure hit the "connect" button in Firefox once Guard is running.

As long as the watcher is running, changes you make will generate CSS automatically. The docs site will also have access to new components and CSS from the gem automatically in development.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/relay_ui. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/relay_ui/blob/main/CODE_OF_CONDUCT.md).

### Adding stimulus controllers

If the component under development requires a new custom stimulus controller, a PR should be opened referencing that controller locally. For example...

```javascript
import SlideoutController from "./slideout"
application.register("slideout", SlideoutController)
```

A PR should be opened that references this new controller. That controller will be added to the npm organization `@relay_ui` and the import in your PR will be swapped with the new controller.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

[Maintained by the team @ LogicRelay](https://www.logicrelay.com/)

## Code of Conduct

Everyone interacting in the RelayUi project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/relay_ui/blob/main/CODE_OF_CONDUCT.md).
