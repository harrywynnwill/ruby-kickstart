# A grad student at a local university thinks he has discovered a formula to
# predict what kind of grades a person will get. He says if you own less than
# 10 books, you will get a "D". If you own 10 to 20 books, you will get a "C",
# and if you own more than 20 books, you will get a "B".
# He further hypothesizes that if you actually read your books, then you will
# get a full letter grade higher in every case.
#
# grade(4,  false)  # => "D"
# grade(4,  true)   # => "C"
# grade(15, true)   # => "B"

def grade(num_books, reads_books)
    if reads_books == false #if the books not read falls into first switch else falls into the other switch with 1 grade more.
      case num_books
      when 0..9
      "D"
      when 10..20
      "C"
      when 21..30
      "B"
      else
      "B"
      end
    else
      case num_books
      when 0..9
      "C"
      when 10..20
      "B"
      when 21..30
      "A"
      else
      "A"
      end
 end
end

