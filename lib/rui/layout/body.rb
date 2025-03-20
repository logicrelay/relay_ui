# frozen_string_literal: true

class RUI::Layout::Body < RUI::Base
  def view_template(&)
    body(class: "flex flex-col", data: { controller: "navigation" }, &)
  end
end
