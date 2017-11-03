def total(prices)
  #start the total at 0
  amount = 0
  #proces each price
  prices.each do |price|
    #add the current price to the total
    amount += price
  end
  #return the final total
  amount
end

def refund(prices)
  #start the total at 0
  amount = 0
  #process each price
  prices.each do |price|
    #refund the current price
    amount -= price
  end
  #return the final amount
  amount
end

def show_discounts(prices)
  prices.each do |price|
    #calculate the discount
    amount_off = price/ 3.0
    #format annd print the current dicount
    puts format("Your discount: $%.2f", amount_off)
  end
end
 prices = [3.99, 25.00, 8.99]
 puts format("%.2f", total(prices))
 puts format("%.2f", refund(prices))
 puts show_discounts(prices)
