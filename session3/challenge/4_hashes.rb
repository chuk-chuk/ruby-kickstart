# Write first_pos, a method which takes a string and , returns a hash
# whose keys are all the words in the string, and values are the
# earliest position they were seen in the string.
#
# There will be no punctuation in the strings.
#
# first_pos "The dog and the cat and the cow" # => {"The" => 0, "dog" => 1, "and" => 2, "the" => 3, "cat" => 4, "cow" => 7}

def first_pos(string)
  to_return = {}
  string.split.each_with_index do |word, index|
    to_return[word] ||= index
  end
  to_return
end

#a ||= b; a || a = b It means "if a is false, nil or undefined, then evaluate b and set a to the result".
#Ruby's short circuit evaluation means that if a is defined and evaluates to true, then the right hand side of the operator
#is not evaluated, and no assignment takes place.
