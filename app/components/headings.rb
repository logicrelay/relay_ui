module RUI::Headings
  class H1 < RUI::Base
    def view_template
      h1(class: "text-8xl font-bold") { yield }
    end
  end

  class H2 < RUI::Base
    def view_template
      h2(class: "text-7xl font-bold") { yield }
    end
  end

  class H3 < RUI::Base
    def view_template
      h3(class: "text-5xl font-bold") { yield }
    end
  end

  class H4 < RUI::Base
    def view_template
      h4(class: "text-3xl font-bold") { yield }
    end
  end

  class H5 < RUI::Base
    def view_template
      h5(class: "text-2xl font-bold") { yield }
    end
  end

  class H6 < RUI::Base
    def view_template
      h6(class: "text-xl font-bold") { yield }
    end
  end
end
