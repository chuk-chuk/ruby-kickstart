# Write a method, match_maker, which will receive an unknown number of
# elements, and return an array where every two elements are represented by true or false.
#
# The very first parameter will not be part of this set. Instead, it will tell
# you how to determine what their value should be.
# If it is true, then they will be true when they are oppositely truthy.
# If it is false, then they will be true when they are similarly truthy.
#
# Examples:
# match_maker false, true,  true                # => [true]
# match_maker true,  true,  true                # => [false]
# match_maker true,  false, false               # => [false]
# match_maker true,  false, true                # => [true]
# match_maker true,  true,  false               # => [true]
# match_maker true,  true,  true, false, true   # => [false, true]
# match_maker true,  true,  true, false, nil    # => [false, false]
# match_maker true,  true,  true, true, nil     # => [false, true]
# match_maker true,  true,  true, 0, nil        # => [false, true]

def match_maker(opposites_attract, *elements)
  array = []
  elements.each_slice(2) do |first, last|
    first = !!first #The first ! will convert the argument to a boolean, e.g. true if it's nil or false, and false otherwise.
    #The second will negate that again so that you get the boolean value of the argument, false for nil or false, true for just about everything else.
    last = !!last
    result = if opposites_attract
      first != last
    else
      first == last
    end
    array << result
  end
  array
end
#A non-boolean value that counts as true is called "truthy," and a non-boolean value that counts as false is called "falsey."
