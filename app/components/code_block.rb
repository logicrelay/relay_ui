class RelayUi::CodeBlock < RelayUi::Base
  def view_template
    pre do
      code(class: "language-ruby rounded-lg") do
        yield
      end
    end
  end
end
