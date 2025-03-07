class Views::Components::BadgesView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Headings::H1.new { "Badges" }
      render RUI::Text::Large.new do
        "This section demonstrates the different badge styles available in RelayUi."
      end

      render Components::Description.new("All Badges") do
        div class: "flex flex-row gap-4" do
          render RUI::Badges::Blue.new { "Blue Badge" }
          render RUI::Badges::Gray.new { "Gray Badge" }
          render RUI::Badges::Green.new { "Green Badge" }
          render RUI::Badges::Purple.new { "Purple Badge" }
          render RUI::Badges::Red.new { "Red Badge" }
          render RUI::Badges::Yellow.new { "Yellow Badge" }
        end
        render RUI::CodeBlock.new do
<<-RUBY
render RUI::Badges::Blue.new { "Blue Badge" }
render RUI::Badges::Gray.new { "Gray Badge" }
render RUI::Badges::Green.new { "Green Badge" }
render RUI::Badges::Purple.new { "Purple Badge" }
render RUI::Badges::Red.new { "Red Badge" }
render RUI::Badges::Yellow.new { "Yellow Badge" }
RUBY
        end
      end
    end
  end
end
