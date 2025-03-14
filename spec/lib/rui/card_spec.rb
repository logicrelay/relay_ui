# frozen_string_literal: true

require 'spec_helper'

RSpec.describe RUI::Card do
  it "sets the data-component html attribute" do
    subject = described_class.new.call
    expect(subject).to include('data-component="card"')
  end

  it "merges provided data attributes with the default data attribute" do
    subject = described_class.new(data: { foo: :bar }).call
    expect(subject).to include('data-component="card"')
    expect(subject).to include('data-foo="bar"')
  end

  describe "when an image is first" do
    let(:subject) do
      described_class.new do |c|
        c.image { "some_image_url" }
        c.body { "Some body text!" }
      end.call
    end

    it("does not have top padding") { expect(subject).to_not include('rui:pt-4') }

    it("has bottom padding") { expect(subject).to include('rui:pb-4') }
  end

  describe "when an image is last" do
    let(:subject) do
      described_class.new do |c|
        c.body { "Some body text!" }
        c.image { "some_image_url" }
      end.call
    end

    it("has top padding") { expect(subject).to include('rui:pt-4') }

    it("does not have bottom padding") { expect(subject).to_not include('rui:pb-4') }
  end
end
