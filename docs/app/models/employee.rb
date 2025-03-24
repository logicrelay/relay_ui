class Employee < ApplicationRecord
  include ActiveSupport::NumberHelper

  def formatted_phone = number_to_phone(phone, pattern: /(\d{3})(\d{4})(\d{4})$/)
end
