module Views
  module Components
    module Headings
      class IndexView < Views::Base
        def view_template
          render Layouts::ApplicationLayout.new do
            render Views::Partials::CodeExample.new
          end
        end
      end
    end
  end
end
