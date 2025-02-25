class HelloWorld < Components::Base
  def view_template
    h1(class: "font-bold text-xl") { "Hello World!" }
    render Icon.new("check")
  end
end
