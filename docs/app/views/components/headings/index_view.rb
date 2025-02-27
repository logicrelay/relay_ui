class Views::Components::Headings::IndexView < Views::Base
  QUICK_BROWN_FOX = "The quick brown fox jumps over the lazy dog"

  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RelayUi::Toggle.new do |t|
        t.option(icon: "eye") { "Preview" }
        t.option(icon: "code") { "Code" }
      end
      render RelayUi::Headings::H1.new { QUICK_BROWN_FOX }
      render RelayUi::Headings::H2.new { QUICK_BROWN_FOX }
      render RelayUi::Headings::H3.new { QUICK_BROWN_FOX }
      render RelayUi::Headings::H4.new { QUICK_BROWN_FOX }
      render RelayUi::Headings::H5.new { QUICK_BROWN_FOX }
      render RelayUi::Headings::H6.new { QUICK_BROWN_FOX }
      render Views::Partials::CodeExample.new
    end
  end
end
