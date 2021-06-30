# your code goes here
require 'pry'
#First you need to create a person class that is initialized with a name that cannot be changed.
#If a name cannot be changed, give it an attr_reader
Class Person 
    attr_accessor :bank_account
#Each instance of a class Person should start with $25 in their bank account
#bank_account will be an attr_accessor because you can change it 
    attr_reader :name, :happiness_points, :hygeine_points
#Each instance of a class Person should start with 8 happiness points
#Each instance of a class Person should start with 8 hygeine points
    def initialize(name)
        @name = name
        @bank_account = 25 #starts with $25
        @happiness_points = 8 #starts with 8 points
        @hygeine_points = 8 #starts with 8 points
    end 

#the minimum number of points for happiness is 0 and the max is 10 
    def happiness=(value)
        value.clamp(0, 10)
    end 

#the minimum number of points for hygeine is 0 and the max is 10 
    def hygeine_points=(value)
        value.clamp(0, 10)
    end 
#clean and happy method should return true if point is greater than 7, else return false
    def clean?(value)
        if value > 7
            true 
        else  
            false 
        end 
    end 

    def happy?(value)
        if value > 7
            true 
        else  
            false 
        end  
    end 

#the get_paid method should accept a salary and add the salary to a persons bank account 
    def get_paid(salary)
        binding.pry 
        self.bank_account += salary 
     
        #salary =+ @bank_account
        #return string "all about the benjamins"
    end 
    

end 