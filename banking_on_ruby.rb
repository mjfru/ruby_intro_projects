=begin
#1.
Create an Account class in the editor. 
The :name and :balance attributes should be readable (but not writeable!). 
The class’ initialize method should take two parameters, name and balance, and the balance parameter should default to 100.

Finally, go ahead and store your parameters in instance variables @name and @balance, respectively.


#2.
Add two private methods to your Account class, pin and pin_error.pin should take no arguments and set an instance variable, @pin, equal to the PIN number 1234.
pin_error should take no arguments and should simply return the string "Access denied: incorrect PIN."

#3.
Define a public display_balance method to your Account class. It should take a single parameter, pin_number.
The body of your method should check whether the pin_number is equal to pin (the result of calling the private pin method).
If it is, display_balance should puts "Balance: $#{@balance}."
Otherwise (else), it should puts pin_error (the pin_error message).

#4. Now let’s add in our second public method, which will allow us to withdraw money from our account.

The trick to this one is to realize that since @balance can only be accessed from inside the class, we’ll want to use @balance -= amount to decrease the balance by a certain amount.

Add a public withdraw method to your class that takes two parameters, pin_number and amount.
If pin_number matches pin, your method should subtract the amount from the balance and puts "Withdrew #{amount}. New balance: $#{@balance}."
Otherwise, it should puts pin_error.

#5. Last step: create an instance of your Account class called checking_account.
Give it whatever name and starting balance you like!
=end

class Account
    attr_reader:name
    attr_reader:balance
    def initialize(name, balance=100)
        @name = name
        @balance = balance
    end
    
    private
    def pin
        @pin = 1234
    end
    def pin_error
        return 'Access denied: incorrect PIN.'
    end

    public
    def display_balance(pin_number)
        if pin_number == @pin
            puts "Balance: $#{@balance}."
        else
            puts pin_error
        end
    end

    public
    def withdraw(pin_number, amount)
        if pin_number == @pin
            @balance -= amount
            puts "Withdrew #{amount}. New balance: $#{balance}."
        else
            puts pin_error
        end
    end
end

checking_account = Account.new("trial", 100)