class Views::Components::Headings::IndexView < Views::Base
  QUICK_BROWN_FOX = "The quick brown fox jumps over the lazy dog"

  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Toggle.new do |t|
        t.option(icon: "eye") { "Preview" }
        t.option(icon: "code") { "Code" }
      end
      render RUI::Headings::H1.new { QUICK_BROWN_FOX }
      render RUI::Headings::H2.new { QUICK_BROWN_FOX }
      render RUI::Headings::H3.new { QUICK_BROWN_FOX }
      render RUI::Headings::H4.new { QUICK_BROWN_FOX }
      render RUI::Headings::H5.new { QUICK_BROWN_FOX }
      render RUI::Headings::H6.new { QUICK_BROWN_FOX }
      render Views::Partials::CodeExample.new
    end
  end
end
