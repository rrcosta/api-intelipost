class Order < EnumerateIt::Base
  associate_values(
    in_transit: 1,
    to_be_delivered: 2,
    delivered: 3
  )
end
