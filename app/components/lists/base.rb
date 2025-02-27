module RelayUi::Lists
  class Base < RelayUi::Base
    def view_template
      ul(class: list_classes) do
        yield
      end
    end

    def item
      li(class: "ml-5") { yield }
    end
  end
end