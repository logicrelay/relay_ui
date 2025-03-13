# frozen_string_literal: true

module RUI::Text
  class Large < RUI::Base
    def view_template
      p(class: "rui:text-lg rui:text-zinc-700 rui:mb-4") { yield }
    end
  end

  class Medium < RUI::Base
    def view_template
      p(class: "rui:text-base rui:text-zinc-700 rui:mb-4") { yield }
    end
  end

  class Small < RUI::Base
    def view_template
      p(class: "rui:text-sm rui:text-zinc-700 rui:mb-4") { yield }
    end
  end
end
