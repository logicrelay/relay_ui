class Views::Components::Headings::IndexView < Views::Base
  def view_template
    render Layouts::ApplicationLayout.new do
      render RUI::Icon.new("check")
      render Views::Partials::CodeExample.new
    end
  end
end
