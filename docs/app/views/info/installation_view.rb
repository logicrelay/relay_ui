class Views::Info::InstallationView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      div class: "flex flex-col gap-8" do
        render RUI::Headings::H1.new { "Installation" }
        render RUI::Text::Medium.new do
          "Add this line to your application's Gemfile:"
        end
        render RUI::CodeBlock.new do
<<-RUBY
gem 'relay_ui'
RUBY
        end
        render RUI::Text::Medium.new { "And then execute:" }
        render RUI::CodeBlock.new do
<<-RUBY
bundle install
RUBY
        end
        render RUI::Text::Medium.new { "Or install it directly:" }
        render RUI::CodeBlock.new do
<<-RUBY
gem install relay_ui
RUBY
        end
        render RUI::Text::Medium.new do
          "Include the gem's stylesheet in your application layout:"
        end
        render RUI::CodeBlock.new do
<<-RUBY
stylesheet_link_tag "relay_ui/relay_ui", media: "all"
RUBY
        end
        render RUI::Text::Medium.new do
          "That's it! All of the basic functionality of the UI kit is now available to you. For certain components that require additional stylesheets and stimulus controllers, you'll need to include those separately. They will be documented in the component's usage instructions."
        end
      end
    end
  end
end
