# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  index_array = string.downcase.split("").map.with_index do |letter, index|
    #["a", "r", "e", " ", "y", "o", "u", " ", "r", "?"] some array
    (index + 1) if letter == "r"
  end
  index_array.compact.map {|index| string[index]}.join
end
