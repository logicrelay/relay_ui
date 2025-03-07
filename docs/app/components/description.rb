class Components::Description < Components::Base
  def initialize(component_name = "Component Name")
    @component_name = component_name
  end

  def view_template
    div(class: "flex flex-col gap-3 py-12") do
      render RelayUi::Headings::H2.new { @component_name }
      yield
    end
  end
end
