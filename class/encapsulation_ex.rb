# Exercise 1: Encapsulation with Accessors
# Create a Person class with name, age, and gender attributes. Implement accessors for name and age, but make gender readable only (using an accessor for reading but not writing). Ensure that the age attribute can only be set if the provided value is greater than 0.


class Person
    attr_accessor :name, :age
    attr_reader :gender
    
    def initialize(name, age, gender)
      @name = name
      self.age = age
      @gender = gender
    end
    
    def age=(new_age)
     if new_age > 0
       @age = new_age
     else
      p 'Age must be getter than 0'
     end
    end
    
  end
  
  p1 = Person.new("sk", -10, "male")
  
  # p p1.name
  # p p1.age
  # p p1.gender
  
  # p1.name = "Subh"
  # p1.age = -5
  
  p p1.name
  p p1.age

  
  Output:
  "Age must be getter than 0"
   "sk"
   nil