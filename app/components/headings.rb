module RelayUi::Headings
  class H1 < RelayUi::Base
    def view_template
      h1(class: "text-5xl font-bold mb-5") { yield }
    end
  end

  class H2 < RelayUi::Base
    def view_template
      h2(class: "text-4xl font-bold mb-4") { yield }
    end
  end

  class H3 < RelayUi::Base
    def view_template
      h3(class: "text-3xl font-bold mb-3") { yield }
    end
  end

  class H4 < RelayUi::Base
    def view_template
      h4(class: "text-2xl font-bold mb-2") { yield }
    end
  end

  class H5 < RelayUi::Base
    def view_template
      h5(class: "text-xl font-bold mb-1") { yield }
    end
  end

  class H6 < RelayUi::Base
    def view_template
      h6(class: "text-lg font-bold") { yield }
    end
  end
end
