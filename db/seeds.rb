unless User.count > 0
  User.create!(
    first_name: "Homer",
    last_name: "Simpson",
    email: "homer.simpson@example.com",
  )
end

drivers = Driver.all

unless drivers.count >= 10
  10.times do
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    Driver.create!(
      first_name: first_name,
      last_name: last_name,
      email: "#{first_name}.#{last_name}@example.com",
    )
  end
end

drivers.each do |driver|
  next unless driver.cars.empty?

  Car.create!(driver: driver, car_type: Car::VALID_CAR_TYPES.sample)
end
