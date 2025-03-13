# spec/lib/rui/card_spec.rb
require 'spec_helper'

RSpec.describe RUI::Card do
  it 'renders the card with all elements' do
    RUI::Card.new.call do |c|
      c.heading do |h|
        h.thumbnail { 'https://placehold.co/50' }
        h.title { 'Card Title' }
        h.subtitle { 'Card Subtitle' }
      end
      c.image { 'https://placehold.co/300x150' }
      c.body { 'This is some text' }
      c.actions do |a|
        a.action { 'Action 1' }
        a.action { 'Action 2' }
      end
      c.icons do |i|
        i.icon { 'star' }
        i.icon { 'star' }
      end
    end

    expect(RUI::Icon).to receive_message_chain(:new, :call).twice
  end
end
