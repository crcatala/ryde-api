users = User.all
unless users.count > 0
  User.create!(
    first_name: "Homer",
    last_name: "Simpson",
    email: "homer.simpson@example.com",
  )
end

users.each do |user|
  next unless user.payment_methods.empty?

  3.times do
    PaymentMethod.create!(
      user: user,
      payment_type: PaymentMethod::VALID_PAYMENT_TYPES.sample,
      card_type: PaymentMethod::VALID_CARD_TYPES.sample,
      last_four: rand(9999).to_s.rjust(4, "0"),
    )
  end
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

unless Trip.count >= 100
  100.times do
    driver = drivers.sample
    car = driver.cars.sample
    user = users.sample

    Trip.create!(
      user: user,
      driver: driver,
      car: car,
      payment_method: user.payment_methods.sample,
      city: Faker::Address.city,
      fare: BigDecimal.new(rand(0.00...100.00).to_s).round(2),
      pickup_time: Faker::Time.between(365.days.ago, Date.today, :all),
    )
  end
end
