require "rouge"
require "rouge/plugins/redcarpet"
require "redcarpet"

class RUI::Support::Markdown::SafeRenderer < Redcarpet::Render::HTML
  include Rouge::Plugins::Redcarpet
end
