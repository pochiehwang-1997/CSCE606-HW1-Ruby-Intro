# frozen_string_literal: true

# Part 1

def sum(arr)
  element_sum = 0
  for i in arr
    element_sum = element_sum + i 
  end
  return element_sum
end

def max_2_sum(arr)
  if arr.length() == 0
    return 0
  elsif arr.length() == 1
    return arr[0]
  else
    largest_num1 = arr[0]
    largest_num2 = arr[1]
    for i in arr[2..arr.length()]
      if largest_num1 >= largest_num2
        if i >= largest_num1
          largest_num2 = i
        end
      else
        if i >= largest_num2
          largest_num1 = i
        end
      end
    end
  end
  return largest_num1 + largest_num2
end

def sum_to_n?(arr, number)
  my_dict = {}
  for i in arr
    if my_dict.has_key?(i)
      return true
    else
      my_dict[number-i] = 1
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant?(string)
  if string.length() == 0
    return false
  end
  my_dict = ["B", "C", "D", "F", "G", "J", "K", "L", "M", "N", "P", "Q", "S", "T", "V", "X", "Z", "H", "R", "W", "Y"]
  if my_dict.include?(string[0].upcase)
    return true
  else
    return false
  end
end

def binary_multiple_of_4?(string)
  num = string.to_i
  if num % 100 == 0 && num >= 100
    return true
  elsif string == "0" 
     return true
  else
    return false
  end
end

# Part 3

# Object representing a book
class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn,price)
    if price <= 0
      raise ArgumentError
    end
    if isbn == ""
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  def price_as_string
    return '$%.2f' %@price
  end
end

