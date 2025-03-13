class Views::Components::CardsView < Views::Base
  def view_template
    render Views::Layouts::ApplicationLayout.new do
      render RUI::Markdown::Unsafe.new do
<<-STRING
# RUI::Card

`RUI::Card` description...
STRING
      end

      render RUI::Card.new do |c|
        c.header do |h|
          h.thumbnail { "https://placehold.co/50" }
          h.titles do |t|
            t.title { "Card Title" }
            t.subtitle { "Card Title" }
          end
        end
        c.image { "https://placehold.co/300x150" }
        c.body { "This is some text" }
        c.footer do |f|
          f.actions do |a|
            a.action { "Action 1" }
            a.action { "Action 2" }
          end
          f.icons do |i|
            i.icon { "star" }
            i.icon { "star" }
          end
        end
      end
    end
  end
end
