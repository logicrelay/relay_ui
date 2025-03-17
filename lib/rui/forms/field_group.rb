class RUI::Forms::FieldGroup < RUI::Base
  def view_template(&)
    div(class: "rui:flex rui:flex-col rui:gap-1", &)
  end
end
