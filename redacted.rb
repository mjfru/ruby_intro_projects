puts "Please enter a word, a sentence, or a paragraph."
text = gets.chomp

puts "What words should be redacted?"
redact = gets.chomp

words = text.split(" ")
words.each do |word|
    if word == redact
        print "REDACTED "
    else
        print word + " "
    end
end