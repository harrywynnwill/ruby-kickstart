# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"


  def pirates_say_arrrrrrrrr(string)
    letters = string.split""  
    letters.map!.each_with_index do |item, index |  
      if item == "r" || item == "R"
    letters[index+1]
      
      
     
      else
       ""
      end
    end
    letters.join
  end
p pirates_say_arrrrrrrrr("are you really learning Ruby?") 
