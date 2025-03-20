# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include RUI::Helpers::FlashHelper

  layout false
end
