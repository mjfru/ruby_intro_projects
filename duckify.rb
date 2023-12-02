print "Thtring, pleathe!: "
user_input = gets.chomp
user_input.downcase!
if user_input.empty?
    print "Hey, forgetting something? Run this program again and enter a word!"
elsif user_input.include? "s"
    puts "An 'S' was found!"
    user_input.gsub!(/s/, "th")
    puts "Your duckified word is: #{user_input}!"
else
    print "No 's' found here!"
end
