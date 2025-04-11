module RUI::Forms
  class FormBuilder < ActionView::Helpers::FormBuilder
    # include ActionView::Helpers::TagHelper
    include ActiveSupport::Concern
    # Base styles for different element types
    TEXT_FIELD_STYLE = "bg-zinc-50 ring ring-zinc-300 hover:ring-zinc-400 focus:ring-blue-500 rounded px-2 py-1".freeze
    SELECT_FIELD_STYLE = "bg-zinc-50 ring ring-zinc-300 hover:ring-zinc-400 focus:ring-blue-500 rounded px-2 py-2".freeze

    class_attribute :text_field_helpers, default: field_helpers - [ :label, :check_box, :radio_button, :fields_for, :fields, :hidden_field, :file_field ]

    # Style labels and include error messages if present
    def label(method, content_or_options = nil, options = {}, &block)
    opts = content_or_options || options

    default_classes = opts[:required] ? "text-sm font-semibold after:content-['*'] after:ml-1 after:text-red-500" : "text-sm font-semibold"
    error_classes = "text-sm text-red-500 font-semibold"

    label_options = merge_classes(opts, default_classes)

    label_content = if object.present? && object.errors[method].present?
      @template.content_tag(:div, class: "flex flex-col") do
        @template.concat(super(method, content_or_options, label_options, &block))
        @template.concat(@template.content_tag(:span, object.errors.full_messages_for(method).to_sentence, class: error_classes))
      end
    else
      super(method, content_or_options, label_options, &block)
    end

    # Use metaprogramming to style fields that are like text fields

    text_field_helpers.each do |field_method|
      class_eval <<-RUBY_EVAL, __FILE__, __LINE__ + 1
        def #{field_method}(method, options = {})
          super(method, merge_classes(options, TEXT_FIELD_STYLE))
        end
      RUBY_EVAL
    end
      label_content
    end

    # Fields and helpers that are not covered in text-like fields
    def select(method, choices = nil, options = {}, html_options = {}, &block)
      super(method, choices, options, merge_classes(html_options, SELECT_FIELD_STYLE), &block)
    end

    def submit(value = nil, options = {})
      default_classes = RUI::TailwindMerger.instance.merge(RUI::Buttons::Base::STYLE, RUI::Buttons::Primary::STYLE)

      @template.content_tag("div", super(value, merge_classes(options, default_classes)))
    end

    private

    # Utility for merging optional classes
    def merge_classes(hash, default_classes)
      if hash.nil?
        { class: default_classes }
      elsif hash.key?(:class)
        merged_classes = RUI::TailwindMerger.instance.merge(default_classes, hash[:class])
        hash.merge!(class: merged_classes)
      else
        hash.merge!(class: default_classes)
      end
    end
  end
end
