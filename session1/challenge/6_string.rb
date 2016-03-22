# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"



def odds_and_evens(string, return_odds)
 letters=string.split"" #split returns an array, no need to pass to an array
 if return_odds == true
    letters.map!.each_with_index {|item ,index| item if index.odd?}
    letters.join
 else
  letters.map!.each_with_index {|item ,index| item if index.even?}
  letters.join
 end
end





#odds_and_evens("abcdefg",true)    # => "bdf"
#odds_and_evens("abcdefg",false)   # => "aceg"