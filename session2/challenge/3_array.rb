# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    self.chars.map.with_index {|c,i| c if i % 2 == 0}.compact.join
  end
end
