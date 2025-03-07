# RelayUI

> [!WARNING]
> This is a _very_ new gem. The API is still emerging and changing extremely rapidly. You may even find that this gem doesn't respect [semver](https://semver.org/) principles at this stage. Use at your own risk until you see this gem hit v1.0.0. We released this publicly in hopes of connecting with potential contributors. If that is you, feel free to [join our Discord](https://discord.gg/wPyvK87KFe)!

RelayUI is an opinionated UI kit for Ruby and Rails apps designed for speed of development. It is written in Phlex, uses TailwindCSS for styling and Hotwire for interactivity.

[Read more about the UI kit on our documentation site.](https://www.relayui.com)

RelayUI is based on the following principles:
- **Ease of use over flexibility** - Many similar UI kits are built with customization in mind, making them flexible at the cost of complexity. We prioritize an intuitive and concise DSL over making this gem everything to all people. We say it is "delightfully inflexible."
- **No code generation** - We don't rely on generators to make local copies of components. By installing this gem, you get all the things you need to make passable UIs for business applications _very quickly_.
- **Prescriptive selection of companion gems** - We've included gems like `tabler_icons_ruby` and others that bring a ton of functionality without any cognitive overhead. We want the experience with this gem to be very turn-key. Choosing a different icon library isn't going to be the difference between failure and success for your product, so don't spend any time considering it!
- **Subclassing over heavy configuration** - Whenever possible we try and pull key variant indicators up to the class name level, so we'd opt for something like `RUI::Button::Primary` over `RUI::Button(variant: :primary)`. This brings key design decisions up to the class level, turning your IDE's autocomplete into a search engine for available components. To the extent that these variants have parameters to be passed, the lists are very small and direct, focusing on composition over customization.

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

In the root of the repository, run `rake watch` to dynamically generate CSS for Phlex components that are added during development. This generated CSS should be committed to the repository.

The documentation directory is included in the source of this repository so that documentation can stay in sync with the gem's source. Please be sure that PRs with updates to the gem also include the associated documentation.

## Contributing

If you're interested in contributing on this project we'd love to have you on [our Discord server](https://discord.gg/wPyvK87KFe).

This repo uses [mise](https://mise.jdx.dev/getting-started.html) for dev env config. If you want to work on this project locally, copy `.env.example` to a new file `.env` and set an environment variable `RELAY_UI_PATH` that points to the path to this repo on your local machine.

Then, run the server from the docs directory: `./bin/dev`

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/relay_ui. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/relay_ui/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

[Maintained by the team @ LogicRelay](https://www.logicrelay.com/)

## Code of Conduct

Everyone interacting in the RelayUi project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/relay_ui/blob/main/CODE_OF_CONDUCT.md).
