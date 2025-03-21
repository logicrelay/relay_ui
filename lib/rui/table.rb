class RUI::Table < RUI::Base
  def initialize(rows)
    @rows = rows
    @columns = []
  end

  def view_template(&)
    vanish(&)

    table(class: "bg-white w-full table-auto border-collapse") do
      thead(class: "bg-blue-50") do
        @columns.each do |column|
          th(class: "border border-zinc-300 py-2 px-2 #{align(column[:align])}") do
            column[:header]
          end
        end
        th(class: "border border-zinc-300 px-2 text-center") { "" }
      end

      tbody do
        @rows.each do |row|
          tr(class: "hover:bg-zinc-50") do
            @columns.each do |column|
              td(class: "border border-zinc-300 py-1 px-2 #{align(column[:align])}") do
                column[:content].call(row)
              end
            end
            td(class: "border border-zinc-300 py-1 px-2 text-center") do
              div(class: "flex flex-row justify-center gap-3") do
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
      "text-right"
    when :center
      "text-center"
    else
      "text-left"
    end
  end
end
