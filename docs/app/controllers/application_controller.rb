# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include RUI::Alert::Flashes

  layout false
end
