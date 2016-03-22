# Given a string, replace every instance of sad to happy
#
# add_more_ruby("The clowns were sad.")         # => "The clowns were happy."
# add_more_ruby("The sad dad said sad stuff.")  # => "The happy dad said happy stuff."
# add_more_ruby("Sad times are ahead!")         # => "Happy times are ahead!"
=begin
def add_more_ruby(string)
  if string == string.capitalize
  string.gsub(/sad/i,"happy")
  end
  string.gsub(/sad/i,"happy")
end
=end
def add_more_ruby(string)
  string.gsub('sad', 'happy').gsub('Sad', 'Happy')
end
