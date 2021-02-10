# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  sum arr.max(2)
end

def sum_to_n? arr, n
  a = arr.combination(2).map{ |x| sum x }.index n
  if a == nil then
    return false
  end
  return true
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? ss
  ss =~ /^[bcdfghjklmnpqrstvwxyz]/i
end

def binary_multiple_of_4? ss
  ss =~ /^[01]+100$|^100$|^0$/
end

# Part 3

class BookInStock
  attr_accessor :price, :isbn
  def initialize(ii, p)
    if  ii == ''
      raise ArgumentError.new("ISBN must be non empty string")
    end
    if p <= 0 
      raise ArgumentError.new("Price must be greater than zero")
    end
    @isbn = ii
    @price = p
  end
  def price=(p)
    if p <= 0
      raise ArgumentError.new("Price must be greater than zero")
    end
    @price = p
  end
  def isbn=(ii)
    if ii == ''
      raise ArgumentError.new("ISBN must be non empty string")
    end
    @isbn = ii
  end
  def price_as_string
    "$#{format "%.2f", @price}"
  end
end
