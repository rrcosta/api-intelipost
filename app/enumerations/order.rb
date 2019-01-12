class Order < EnumerateIt::Base
  associate_values(
    :in_transit,
    :to_be_delivered,
    :delivered
  )
end
