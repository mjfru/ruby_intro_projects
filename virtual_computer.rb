# 1. Create a class called Computer and give it an initialize method that takes no parameters. The body of initialize should be empty.

# 2. Update initialize to take two parameters, username and password. In the body of initialize, set the instance variables @username and @password (respectively) to these parameters.
# In your initialize method, you’ll also want to create a @files instance variable and set this to an empty hash. This is so we can keep track of our files later!


# 3. Add a class variable called @@users to your Computer class. Set it equal to an empty hash.
# In your initialize method, set @@users[username] = password so that your @@users hash keeps usernames as keys with each username’s password as the associated value.

# 4. Inside your Computer class, define a method called create with a single parameter, filename.
# Inside create, declare a variable called time and set it equal to the current time (using Time.now).
# Next, inside create, add a new key/value pair to the @files hash. Use the filename key to store the value time.
# For the final step in create, please puts a message telling the user that a new file was created.

# 5. Add a new class method to your Computer class called Computer.get_users. It should have no parameters.
# Your new Computer.get_users method should return the @@users class variable.

#6.  After your class, create a new instance of Computer and store it in a new variable called my_computer.

class Computer
    @@users = {}
    def initialize(username, password)
        @username = username
        @password = password
        @files = {}
        @@users[username] = password
    end
end

my_computer = new.Computer('C3P-O', 'Android Boy')