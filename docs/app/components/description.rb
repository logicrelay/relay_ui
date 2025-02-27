class Components::Description < Components::Base
  def initialize(component_name: "Component Name")
    @component_name = component_name
  end

  def view_template
    div(class: "my-6") do
      render RelayUi::Headings::H2.new { @component_name }
      render RelayUi::Text::Large.new { "Preview and Code:" }
      yield
    end
  end
end