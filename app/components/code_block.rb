class RelayUi::CodeBlock < RelayUi::Base
  def initialize(language: "ruby")
    @language = language
  end

  def view_template
    pre do
      code(class: "language-#{@language} rounded-lg") do
        yield
      end
    end
  end
end
