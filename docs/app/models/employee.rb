  # frozen_string_literal: true

  class Employee
    attr_reader :first_name, :last_name, :email, :phone
    def initialize(first_name:, last_name:, email:, phone:)
      @first_name = first_name
      @last_name = last_name
      @email = email
      @phone = phone
    end
  end
