class RUI::Layout::Page < RUI::Base
  def view_template(&)
    div(class: "flex mt-25.5 lg:mt-14", &)
  end
end
