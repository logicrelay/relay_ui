class RUI::Layout::Main < RUI::Base
  def initialize(attrs = {})
    @attrs = attrs
  end

  def view_template(&)
    main(**merged_attributes, &)
  end

  def merged_attributes
    default_classes = "p-10 w-full lg:ml-72 lg:w-[calc(100%_-_18rem)]"

    merged_classes = if @attrs[:class]
      RUI::TailwindMerger.instance.merge(default_classes, @attrs[:class])
    else
      default_classes
    end

    @attrs.merge! class: merged_classes
  end
end
