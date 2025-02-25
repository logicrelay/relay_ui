class HelloWorld < Phlex::HTML
  def view_template
    h1(class: "test") { "Hello World!" }
  end
end
