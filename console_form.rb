# This small program will gather and modify a user's input in the console.

print "What's your first name? "
# gets is a method that, well, gets input from the user.
# Because Ruby automatically adds a blank line (newline) after each bit of input, we need .chomp to remove it.
first_name = gets.chomp
first_name.capitalize!

# .capitalize method does what you'd expect it to, but adding the '!' modifies the value contained within the variable itself.

print "What's your last name? "
last_name = gets.chomp
last_name.capitalize!

print "What city are you from? "
city = gets.chomp
city.capitalize!

print "What state/province are you from? Please use abbreviations. "
state = gets.chomp
state.upcase!

puts "Your name is #{first_name} #{last_name} and you're from #{city}, #{state}."