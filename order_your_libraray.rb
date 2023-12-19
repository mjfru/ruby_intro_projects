def alphabetize(arr, rev = false)
    arr.sort!
    if (rev == true)
        arr.reverse!
    else
        return arr
    end
end

numbers = [1, 7, 8, 2, 3]
print(alphabetize(numbers, true))

books = ["The Turn of the Screw", "Meditations", "Red Men", "The King in Yellow", "The Hobbit", "Don Quixote"]
print(alphabetize(books))
print(alphabetize(books, true))

# Setting the second parameter to have a default value of false.
# .sort returns a sorted array while .sort! modifies the original array.