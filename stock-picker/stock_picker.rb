# frozen_string_literal: true

def stock_picker(stock_price)
  stock_hash = stock_price.each_with_index.each_with_object(Hash.new(0)) do |(price_on_day, index), hash|
    # hash used to store all important information in accumulator index required to know what day to buy or sell on
    if (hash[:new_low]).zero? || price_on_day < hash[:new_low]
      hash[:new_low] = price_on_day
      hash[:new_low_index] = index
      # sets initial values and resets highest so any comparisons reflect selling after the new low
    end
    next unless hash[:best_value] < price_on_day - hash[:new_low]

    hash[:buy] = hash[:new_low_index]
    hash[:sell] = index
    hash[:best_value] = price_on_day - hash[:new_low]
    # sets new best value and saves index of the buty and sell prices
  end
  puts "for a profit of $#{stock_hash[:best_value]}. Buy and sell on days:"
  [stock_hash[:buy], stock_hash[:sell]]
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10]) # [1, 4]
