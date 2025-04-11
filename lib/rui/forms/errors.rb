class RUI::Forms::Errors < RUI::Base
  include Phlex::Rails::Helpers::Pluralize

  def initialize(errors, object_name = "record")
    @errors = errors
    @object_name = object_name
  end

  def view_template
    if @errors.any?
      div(class: "bg-red-50 text-red-500 p-10 font-medium rounded-md mt-3") do
        h2 { pluralize(@errors.count, "error") + " prohibited this #{@object_name} from being saved:" }
        ul(class: "list-disc ml-6") do
          @errors.each do |error|
            li { error.full_message }
          end
        end
      end
    end
  end
end
