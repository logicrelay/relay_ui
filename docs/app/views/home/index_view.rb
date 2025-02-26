module Views
  module Home
    class IndexView < Views::Base
      def view_template
        render Layouts::ApplicationLayout.new do
          p { "Put stuff here" }
        end
      end
    end
  end
end
