module Views
  module Home
    class IndexView < Views::Base
      def view_template
        render Layouts::ApplicationLayout.new do
          pre do
            code(class: "language-ruby") do
              <<-RUBY
                class MyComponent
                  include Phlex::Component

                  def render
                    div(class: "bg-blue-500 text-white p-4") do
                      "Hello, world!"
                    end
                  end
                end
              RUBY
            end
          end
        end
      end
    end
  end
end
