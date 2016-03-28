# Given an array of elements, return true if any element shows up three times in a row
=begin
def got_three? (array)
   counts = Hash.new 0
  array.each do |x|
    counts[x] += 1

  end

x = counts.map {|k,v| v

}


test = x.map.select {|x|
   x >=3


}

test.empty? ? false : true


x = test.map.each { |e|
  e.empty? p false

elsif e.empty?

end
  }
  #x >=3 ? test = true : test = false

#}

end
=end
def got_three?(elements)
  elements.each_cons 3 do |a, b, c|
    return true if a == b && b == c
  end
  false
end





# Examples:
p got_three? [1, 2,2,2, 3]  # => true
 p got_three? ['a', 'a', 'b']  # => false
p got_three? ['a', 'a', 'a']  # => true
p got_three? [1, 2, 1]     # => false
p got_three? [1,2,1,1]

