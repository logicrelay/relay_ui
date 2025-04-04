class RUI::Layout::Main < RUI::Base
  def view_template(&)
    main(class: "p-5 lg:p-10 lg:ml-72 w-full max-w-[800px]", &)
  end
end
