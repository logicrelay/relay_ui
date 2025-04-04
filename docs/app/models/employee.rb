class Employee < ApplicationRecord
  include ActiveSupport::NumberHelper
  has_and_belongs_to_many :locations

  def formatted_phone = number_to_phone(phone, pattern: /(\d{3})(\d{4})(\d{4})$/)
end
