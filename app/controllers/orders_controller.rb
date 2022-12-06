class OrdersController < ApplicationController
  def total(orders)
    details = OrderDetail.where('order_id=' + orders.id)
    total = 0
    details.each { |detail|
      book = Book.first('id=' + detail.book_id.to_s)
      total += book.price * detail.quantity
    }
    total
  end
  def price_book(orders)
    user = User.where('id=' + orders.user_id)
    if user.level == 0
        discount = 2
      elsif user.level == 1
        discount = 5
    else
        discount = 10
    end
    total(order) * (100 - discount) / 100
   
  end
end