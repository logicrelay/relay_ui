# frozen_string_literal

require "tailwind_merge"

class RUI::TailwindMerger
  include Singleton
  include TailwindMerge

  def initialize
    @merger = TailwindMerge::Merger.new
  end

  def merge(base_classes, given_classes)
    return base_classes if given_classes.nil?
    @merger.merge([ base_classes, given_classes ])
  end
end
