# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  s = 0
  arr.each do |a|
    s += a
  end
  
  return s
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  end
  s = arr.sort
  return s[-1] + s[-2]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  
  size = arr.length
  
  if size == 0
    # return n == 0
    return false
  end
  
  # puts size
  
  0.upto(size - 1) do |i|
    0.upto(size - 1) do |j|
      if i != j
        if arr[i] + arr[j] == n
          return true
        end
      end
    end
  end
  
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if (s.downcase[0] =~ /[A-Za-z]/) != nil
    return (s.downcase[0] =~ /\A[^aeiou]/) == 0
  end
  
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  size = s.length
  num = 0
  index = size-1
  
  if size == 0
    return false
  end
  
  0.upto(size-1) do |i|
    if s[i] != '0' and s[i] != '1'
      return false
    else
      if s[i] == '1'
        # puts 2**(index)
        # puts "Index"
        # puts i, s[i], index
        num += 2**(index)
        # num += 2**(i)
        index -= 1
      else
        index -=1
      end
    end
  end
  
  puts num
  return (num % 4) == 0
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if (isbn.length == 0) or price <= 0
      raise ArgumentError, "isbn must be a non-empty string and price must be >0"
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    return @isbn
  end
  
  def price
    return @price
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price=(price)
    @price = price
  end
  
  def price_as_string
    s = '%.2f' % @price
    return "$" + s
  end
end


puts sum_to_n?([1, 2, 4, 3], 7)
puts hello("me")
puts starts_with_consonant?("Hello")
puts (binary_multiple_of_4?("100"))
puts (binary_multiple_of_4?("1000000000001"))

b = BookInStock.new("001234", 12.2)
puts b.price
puts b.price_as_string