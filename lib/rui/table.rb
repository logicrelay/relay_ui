class RUI::Table < RUI::Base
  def initialize(rows)
    @rows = rows
    @columns = []
  end

  def view_template(&)
    vanish(&)

    table(class: "rui:bg-white rui:w-full rui:table-auto rui:border-collapse") do
      thead(class: "rui:bg-blue-50") do
        @columns.each do |column|
          th(class: "rui:border rui:border-zinc-300 rui:py-2 rui:px-2 #{align(column[:align])}") do
            column[:header]
          end
        end
        th(class: "rui:border rui:border-zinc-300 rui:px-2 rui:text-center") { "" }
      end

      tbody do
        @rows.each do |row|
          tr(class: "rui:hover:bg-zinc-50") do
            @columns.each do |column|
              td(class: "rui:border border-zinc-300 py-1 px-2 #{align(column[:align])}") do
                column[:content].call(row)
              end
            end
            td(class: "rui:border rui:border-zinc-300 rui:py-1 rui:px-2 rui:text-center") do
              div(class: "rui:flex rui:flex-row rui:justify-center rui:gap-3") do
                render RUI::Buttons::Ghost.new(icon: "edit")
                render RUI::Buttons::Ghost.new(icon: "archive")
              end
            end
          end
        end
      end
    end
  end

  def column(header, align = :left, &content)
    @columns << { header:, align:, content: }
  end

  def align(align)
    case align
    when :right
      "rui:text-right"
    when :center
      "rui:text-center"
    else
      "rui:text-left"
    end
  end
end
