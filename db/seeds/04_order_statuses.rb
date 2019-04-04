1.times do |order_status|
  order_status = OrderStatus.create(
    name: "New"
  )
end

1.times do |order_status|
  order_status = OrderStatus.create(
    name: "Preparing"
  )
end

1.times do |order_status|
  order_status = OrderStatus.create(
    name: "Shipping"
  )
end

1.times do |order_status|
  order_status = OrderStatus.create(
    name: "Done"
  )
end

1.times do |order_status|
  order_status = OrderStatus.create(
    name: "Cancel Refund"
  )
end
