# frozen_string_literal = true

Employee.destroy_all
Location.destroy_all

[ "New York", "San Francisco", "Los Angeles", "Chicago" ].each do |name|
  Location.create(name:)
end

50.times do
  last_name = Faker::Name.last_name
  Employee.create(
    first_name: Faker::Name.first_name,
    last_name:,
    email: "#{last_name.downcase}@relayui.com",
    phone: "(#{Faker::PhoneNumber.area_code}) #{Faker::PhoneNumber.exchange_code}-#{Faker::PhoneNumber.subscriber_number}"
  )
end
