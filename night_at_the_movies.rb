# A Night at the Movies
# This small app will keep track of movies in a hash and their rating, allowing you to update, delete, add, and view to the hash.

# Initial Hash
movies = {
    "Lord of the Rings": 5,
    "Gladiator": 4,
    "Shutter Island": 4
}

# Getting input from the user, storing it in the 'choice' variable
puts "Please make a selection:"
choice = gets.chomp

# Using a case statement to match what the program should do based on user input
case choice
    
    when "add"
        puts "Please enter the movie title."
        title = gets.chomp.to_sym   # Makes this the symbol / key in the hash

        if movies[title.to_sym].nil?
            puts "Please give this movie a rating (1 - 5)."
            rating = gets.chomp.to_i    # Converts the string to an integer, stores as a key
            movies[title] = rating
            puts "Movie has been added!"
        else
            puts "That movie is already in the database! Its rating is #{movies[title.to_sym]}."
        end

    when "update"
        puts "Please enter the movie title you wish to update."
        title = gets.chomp
        if movies[title.to_sym].nil?
            puts "Movie not found. Please add it to our database."
        else
            puts "Please provide your revised rating for this movie (1 - 5)."
            rating = gets.chomp.to_i
            movies[title.to_sym] = rating.to_i
            puts "Successfully updated."
        end

    when "display"
        movies.each do |movie, rating|
            puts "#{movie}: #{rating}"
        end
    
    when "delete"
        puts "Which movie do you wish to delete?"
        title = gets.chomp
        if movies[title.to_sym].nil?
            puts "Error! Movie not found. Please try again."
        else
            movies.delete(title.to_sym)
            puts "Movie deleted!"
        end
    else
        puts "Error!"
end