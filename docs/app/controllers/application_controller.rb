# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include RUI::Flash::Helper
  include Pagy::Backend

  layout false
end
