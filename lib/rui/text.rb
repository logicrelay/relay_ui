# frozen_string_literal: true

module RUI::Text
  class Large < RUI::Base
    def view_template
      p(class: "text-lg text-zinc-700 mb-4") { yield }
    end
  end

  class Medium < RUI::Base
    def view_template
      p(class: "text-base text-zinc-700 mb-4") { yield }
    end
  end

  class Small < RUI::Base
    def view_template
      p(class: "text-sm text-zinc-700 mb-4") { yield }
    end
  end
end
