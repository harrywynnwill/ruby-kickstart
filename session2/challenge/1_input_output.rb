
def sum_difference_product
  input = gets.chomp

  numbers  = input.split
  x = numbers.map! {|x| x.to_i}
  p sum = x.inject{|x , y | x + y}
  p difference = x.inject{|x , y | x - y}
  p product = x.inject{|x , y | x * y}

 #result = "#{sum}\n#{difference}\n#{product}\n"


end
#sum_difference_product


