module Views
  module Info
    class AboutView < Views::Base
      def view_template
        render Layouts::ApplicationLayout.new do
          p { "Text" }
        end
      end
    end
  end
end
