class RelayUi::CodeBlock < RelayUi::Base
  def view_template
    pre do
      code(class: "language-ruby") do
        yield
      end
    end
  end
end
