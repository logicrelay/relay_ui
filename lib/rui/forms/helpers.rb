module RUI::Forms::Helpers
  DEFAULT_CLASSES = "flex flex-col gap-4".freeze

  def rui_form_with(**options, &block)
    if options.present? && options[:html][:class].present?
      form_with_merged_classes(options[:html][:class], **options, &block)
    else
      form_with(**options.merge(html: { class: DEFAULT_CLASSES }), &block)
    end
  end

  private

  def form_with_merged_classes(provided_classes, **options, &block)
    css = RUI::TailwindMerger.instance.merge(DEFAULT_CLASSES, provided_classes)
    form_with(**options.merge(html: { class: css }), &block)
  end
end
