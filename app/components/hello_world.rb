class HelloWorld < Phlex::HTML
  def view_template
    h1 { "Hello World!" }
  end
end
