class TripSerializer < ActiveModel::Serializer
  attributes :id,
             :car,
             :city,
             :driver,
             :fare,
             :payment_method,
             :pickup_time

  def car
    {
      type: object.car.car_type,
    }
  end

  def fare
    object.fare.to_f
  end

  def driver
    {
      id: object.driver.id,
      name: object.driver.first_name,
    }
  end

  def payment_method
    {
      id: object.payment_method.id,
      card_type: object.payment_method.card_type,
      last_four: object.payment_method.last_four,
      type: object.payment_method.payment_type,
    }
  end
end
