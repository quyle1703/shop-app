3.times do |order|
  order = Order.create(
    user_id: 1,
    order_status_id: 1
  )
end

3.times do |order|
  order = Order.create(
    user_id: 2,
    order_status_id: 2
  )
end

3.times do |order|
  order = Order.create(
    user_id: 1,
    order_status_id: 4
  )
end

4.times do |order|
  order = Order.create(
    user_id: 1,
    order_status_id: 3
  )
end