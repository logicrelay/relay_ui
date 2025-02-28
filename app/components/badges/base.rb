class RelayUi::Badges::Base < RelayUi::Base
  def view_template
    span(class: "px-3 py-0.5 text-sm font-semibold rounded-full #{variant_classes}") { yield }
  end
end