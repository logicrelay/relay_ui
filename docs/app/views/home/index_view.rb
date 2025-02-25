module Views
  module Home
    class IndexView < Views::Base
      def view_template
        render HelloWorld.new
      end
    end
  end
end
