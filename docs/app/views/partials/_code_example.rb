module Views
  module Partials
    class CodeExample < Views::Base
      def view_template
        pre do
          code(class: "language-ruby") do
            <<-RUBY
QUICK_BROWN_FOX = "The quick brown fox jumps over the lazy dog"

render RUI::Headings::H1.new { QUICK_BROWN_FOX }
render RUI::Headings::H2.new { QUICK_BROWN_FOX }
render RUI::Headings::H3.new { QUICK_BROWN_FOX }
render RUI::Headings::H4.new { QUICK_BROWN_FOX }
render RUI::Headings::H5.new { QUICK_BROWN_FOX }
render RUI::Headings::H6.new { QUICK_BROWN_FOX }
            RUBY
          end
        end
      end
    end
  end
end
