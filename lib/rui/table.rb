class RUI::Table < RUI::Base
  include Phlex::Rails::Helpers::DOMID

  def initialize(rows, **attrs)
    @rows = rows
    @columns = []
    @attrs = attrs
  end

  def view_template(&)
    vanish(&)

    table(class: "bg-white w-full table-auto border-collapse rounded", **@attrs) do
      thead(class: "bg-blue-50") do
        @columns.each do |column|
          th(class: classes(column[:attrs][:class])) do
            column[:header]
          end
        end
      end

      tbody do
        @rows.each do |row|
          render Row.new(row:, columns: @columns)
        end
      end
    end
  end

  def column(header = "", **attrs, &content)
    @columns << { header:, attrs:, content: }
  end

  class Row < RUI::Base
    include Phlex::Rails::Helpers::DOMID

    def initialize(row:, columns:)
      @row = row
      @columns = columns
    end

    def view_template
      tr(id: dom_id(@row), class: "odd:bg-white even:bg-zinc-100 hover:bg-zinc-200") do
        @columns.each do |column|
          td(class: classes(column[:attrs][:class])) do
            column[:content].call(@row)
          end
        end
      end
    end

    private

    def base_classes = "border border-zinc-300 py-1 px-2 text-left"

    def classes(custom_classes)
      RUI::TailwindMerger.instance.merge(base_classes, custom_classes)
    end
  end

  private

  def base_classes = "border border-zinc-300 py-1 px-2 text-left"

  def classes(custom_classes)
    RUI::TailwindMerger.instance.merge(base_classes, custom_classes)
  end
end
