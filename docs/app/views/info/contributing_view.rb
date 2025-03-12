class Views::Info::ContributingView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Unsafe.new do
<<-STRING
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
STRING
      end
    end
  end
end
