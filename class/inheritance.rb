# Exercise 2: Protected Methods and Inheritance
# Create a Shape class with a calculate_area method. 
# Subclass Shape with Rectangle and Circle classes, 
# each overriding calculate_area to compute the area specific to that shape. 
# Ensure that the calculate_area method in Shape is accessible only within its subclasses.


class Shape
    include Math
    
    def calculate_area
        p "Calculate area of shape"
    end
    
    private
    
    def print_area(area)
     p "Area of the shape: #{area}"
    end
  end
  
  class Rectangle < Shape
      def initialize(width, height)
        @width = width
        @height = height
      end
      
      def calculate_area
        area = @width * @height
        print_area(area)
      end
  end
  
  class Circle < Shape
     def initialize(radius)
        @radius = radius
      end
      
      def calculate_area
        area = Math::PI * @radius**2
        print_area(area)
      end
  end
  
  class Square < Shape
    
  end
  
  reacta = Rectangle.new(2,4)
   reacta.calculate_area
  
  circle = Circle.new(4)
  circle.calculate_area
  
  square = Square.new
  square.calculate_area
  
  shape = Shape.new
  shape.send(:print_area, 100)


#   OUTPUT:

#   "Area of the shape: 8"
# "Area of the shape: 50.26548245743669"
# "Calculate area of shape"
# "Area of the shape: 100"