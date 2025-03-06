module RelayUi::Text
  class Large < RelayUi::Base
    def view_template
      p(class: "text-lg text-zinc-700") { yield }
    end
  end

  class Medium < RelayUi::Base
    def view_template
      p(class: "text-base text-zinc-700") { yield }
    end
  end

  class Small < RelayUi::Base
    def view_template
      p(class: "text-sm text-zinc-700") { yield }
    end
  end
end