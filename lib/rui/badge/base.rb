class RUI::Badge::Base < RUI::Base
  def view_template
    span(class: "px-3 py-0.5 text-xs rounded-full #{variant_classes}") { yield }
  end
end
