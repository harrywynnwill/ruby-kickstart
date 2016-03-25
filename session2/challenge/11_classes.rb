# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method 
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
  def initialize(beers)
    beers = 0  if beers < 0
    beers = 99 if beers > 99
    self.beers = beers
  end
  attr_accessor 'beers'
  public 
  def englishNumber (number)
  numString =''
  left  = number
  write = left/10          # How many tens left to write out?
  left  = left - write*10  # Subtract off those tens.

  if write > 0
    if write == 1  # Uh-oh...
      # Since we can't write "tenty-two" instead of "twelve",
      # we have to make a special exception for these.
      if    left == 0
        numString = numString + 'ten'
      elsif left == 1
        numString = numString + 'eleven'
      elsif left == 2
        numString = numString + 'twelve'
      elsif left == 3
        numString = numString + 'thirteen'
      elsif left == 4
        numString = numString + 'fourteen'
      elsif left == 5
        numString = numString + 'fifteen'
      elsif left == 6
        numString = numString + 'sixteen'
      elsif left == 7
        numString = numString + 'seventeen'
      elsif left == 8
        numString = numString + 'eighteen'
      elsif left == 9
        numString = numString + 'nineteen'
      end
      # Since we took care of the digit in the ones place already,
      # we have nothing left to write.
      left = 0
    elsif write == 2
      numString = numString + 'twenty'
    elsif write == 3
      numString = numString + 'thirty'
    elsif write == 4
      numString = numString + 'forty'
    elsif write == 5
      numString = numString + 'fifty'
    elsif write == 6
      numString = numString + 'sixty'
    elsif write == 7
      numString = numString + 'seventy'
    elsif write == 8
      numString = numString + 'eighty'
    elsif write == 9
      numString = numString + 'ninety'
    end

    if left > 0
      numString = numString + '-'
    end
  end

  write = left  # How many ones left to write out?
  left  = 0     # Subtract off those ones.

  if write > 0
    if    write == 1
      numString = numString + 'one'
    elsif write == 2
      numString = numString + 'two'
    elsif write == 3
      numString = numString + 'three'
    elsif write == 4
      numString = numString + 'four'
    elsif write == 5
      numString = numString + 'five'
    elsif write == 6
      numString = numString + 'six'
    elsif write == 7
      numString = numString + 'seven'
    elsif write == 8
      numString = numString + 'eight'
    elsif write == 9
      numString = numString + 'nine'
    end
  end

  if numString == ''
    # The only way "numString" could be empty is if
    # "number" is 0.
    return 'zero'
  end
numString
end


def bottles_of_beer (bottles)
  @bottles = bottles
  x = bottles - 1

    
    @bottles = englishNumber(@bottles)
   
    @bottlesMinusOne = englishNumber(x)
    if bottles <= 1
      x=""
      y="s"
    elsif bottles > 2
      x="s"
      y="s"
    else
      x="s"
      y=""
    end
    puts "#{@bottles.capitalize} bottle#{x} of beer on the wall,\n#{@bottles.capitalize} bottle#{x} of beer,\nTake one down, pass it around,\n#{@bottlesMinusOne.capitalize} bottle#{y} of beer on the wall."
  

end


def print_song 
  if beers == 0
    puts ""
  else
  $i = 0
  $num = beers
  $bots = $num
  while  $i < $num do
    bottles_of_beer($bots)
   $i += 1
   $bots -=1
 end

 end
end

end




harry = BeerSong.new (2)
harry.print_song
#BeerSong.englishNumber(9)