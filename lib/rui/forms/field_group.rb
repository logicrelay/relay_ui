class RUI::Forms::FieldGroup < RUI::Base
  def view_template(&)
    div(class: "flex flex-col gap-1", &)
  end
end
