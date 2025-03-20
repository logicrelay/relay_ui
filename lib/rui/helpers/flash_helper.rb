# frozen_string_literal: true

module RUI::Helpers::FlashHelper
  def success(message)
    flash[:success] = message
  end

  def failure(message)
    flash[:failure] = message
  end
end
