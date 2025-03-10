class Views::Info::ContributingView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      div class: "flex flex-col gap-8" do
        render RUI::Headings::H1.new { "Contributing" }
        render RUI::Text::Markdown.new do
<<-MARKDOWN
If you're interested in contributing on this project we'd love to chat with you on [our Discord server](https://discord.gg/wPyvK87KFe).

For more information on contributing to this gem, please see the README file on [GitHub](https://www.github.com/logicrelay/relay_ui).

Bug reports and pull requests are [welcome on GitHub](https://github.com/logicrelay/relay_ui). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/logicrelay/relay_ui/blob/main/CODE_OF_CONDUCT.md).
MARKDOWN
        end
      end
    end
  end
end
