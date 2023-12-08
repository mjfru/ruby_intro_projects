# This project will take a user's input and build a hash from it.
# Each key will be a word from the user; each value will be the number of times it occurs.
#! This is called a Histogram - A visual representation of data

puts "Hey there, user! Input a sentence or two to create your very own histogram!"
text = gets.chomp
# .split transforms the text into an array!
words = text.split

# Add a hash with a default value, 0
frequencies = Hash.new(0)

# Use .each to iterate over the words array:
words.each { |word| frequencies[word] += 1 }
# The first time we find the word, it will be added to the frequency and incremented by 1.

# Using .sort_by to sort the frequencies hash by word count and storing it back in frequencies.
frequencies = frequencies.sort_by do |word, count|
    count
end
# Reverse the sorted array to get the largest counts first
frequencies.reverse

# Now we need to iterate over the array to print out each key-value pair:
frequencies.each do |word, count|
    puts word + " " + count.to_s
    # The .to_s method is simply converting an interger to a string.
end