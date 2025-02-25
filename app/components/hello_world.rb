class HelloWorld < Phlex::HTML
  def view_template
    h1(class: "font-bold text-xl") { "Hello World!" }
  end
end
