class Views::Components::BadgesView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RelayUi::Headings::H1.new { "Badges" }
      render RelayUi::Text::Large.new do
        "This section demonstrates the different badge styles available in RelayUi."
      end

      render Components::Description.new("All Badges") do
        div class: "flex flex-row gap-4" do
          render RelayUi::Badges::Blue.new { "Blue Badge" }
          render RelayUi::Badges::Gray.new { "Gray Badge" }
          render RelayUi::Badges::Green.new { "Green Badge" }
          render RelayUi::Badges::Purple.new { "Purple Badge" }
          render RelayUi::Badges::Red.new { "Red Badge" }
          render RelayUi::Badges::Yellow.new { "Yellow Badge" }
        end
        render RelayUi::CodeBlock.new do
<<-RUBY
render RelayUi::Badges::Blue.new { "Blue Badge" }
render RelayUi::Badges::Gray.new { "Gray Badge" }
render RelayUi::Badges::Green.new { "Green Badge" }
render RelayUi::Badges::Purple.new { "Purple Badge" }
render RelayUi::Badges::Red.new { "Red Badge" }
render RelayUi::Badges::Yellow.new { "Yellow Badge" }
RUBY
        end
      end
    end
  end
end
