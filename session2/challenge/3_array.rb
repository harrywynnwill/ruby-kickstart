# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
   harry =Array.new
    
    each_char.with_index{|char,index|#p index
       harry << char if index.even?
      }
      p harry.join
 end
 
end

"abcdefg".every_other_char  # => "aceg"