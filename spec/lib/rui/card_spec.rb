require 'spec_helper'

RSpec.describe RUI::Card do
  it 'should render a div' do
    card = RUI::Card.new
    output = card.call
    expect(output).to eq('<div>Hello, world!</div>')
  end
end
