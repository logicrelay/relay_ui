class Views::Components::SlideoutView < Views::Base
  include Phlex::Rails::Helpers::TurboFrameTag

  def view_template
    turbo_frame_tag "slideout"
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Headings::H1.new { "Slideouts" }
      render RUI::Text::Large.new do
        "This section demonstrates the different slideouts available in RelayUi."
      end

      render Components::Description.new("Slideout") do
        render RUI::Buttons::Primary.new(
          href: slideout_example_path,
          icon: "arrow-left-bar",
          data: { turbo_frame: "slideout" }
          ) { "Open Slideout" }
        render RUI::CodeBlock.new do
<<-RUBY
# In your application layout...
turbo_frame_tag "slideout"

# In the view containing the content for your slideout
render RUI::Slideout.new do
  div(class: "flex flex-row justify-between items-center p-10") do
    render RUI::Headings::H2.new { "Slideout title" }
    render RUI::Buttons::Destructive.new(
      icon: "x",#{' '}
      data: { action: "slideout#hide" }
    )
  end
end

# The button to open the slideout...
render RUI::Buttons::Primary.new(
  href: slideout_example_path,#{' '}
  data: { turbo_frame: 'slideout' }
) { "Open Slideout" }
RUBY
        end
      end
    end
  end
end
