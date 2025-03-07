class Views::Components::SlideoutView < Views::Base
  include Phlex::Rails::Helpers::TurboFrameTag

  def view_template
    turbo_frame_tag "slideout"
    render Views::Layouts::ApplicationLayout.new do
      render RelayUi::Headings::H1.new { "Slideouts" }
      render RelayUi::Text::Large.new do
        "This section demonstrates the different slideouts available in RelayUi."
      end

      render Components::Description.new("Slideout") do
        render RelayUi::Buttons::Primary.new(
          href: slideout_example_path,
          icon: "arrow-left-bar",
          data: { turbo_frame: "slideout" }
          ) { "Open Slideout" }
        render RelayUi::CodeBlock.new do
<<-RUBY
# In your application layout...
turbo_frame_tag "slideout"

# In the view containing the content for your slideout
render RelayUi::Slideout.new do
  div(class: "flex flex-row justify-between items-center p-10") do
    render RelayUi::Headings::H2.new { "Slideout title" }
    render RelayUi::Buttons::Destructive.new(
      icon: "x",#{' '}
      data: { action: "slideout#hide" }
    )
  end
end

# The button to open the slideout...
render RelayUi::Buttons::Primary.new(
  href: slideout_example_path,#{' '}
  data: { turbo_frame: 'slideout' }
) { "Open Slideout" }
RUBY
        end
      end
    end
  end
end
