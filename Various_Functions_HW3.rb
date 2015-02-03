# HW3 by Omri Meshulam
# 1 Write a function that computes the volume of a sphere, given its radius.
# 2 Write a function that computes the real roots of a given quadratic equation.
# 3 Write a function that returns the number of zeros in
#   a given simple list of numbers.
# 4 Write a function that takes a simple list of numbers as a parameter
#   and returns a list with the largest and smallest numbers in the given list.
# 5 Write a function that takes an integer n as a parameter and
#   prints the first n rows of the Pascal's triangle.

#1
MYPI = Math::PI
def sphere_volume(rad)
    #Calculates a spheres volume given its inputed radius.
    #   Ex) A radius of 5 should produce 523.5987755 
    return ((4.0/3.0)*(MYPI)*(rad*rad*rad))
end

myBall = sphere_volume(5)
puts "The volume of myBall given its radius of 5 is #{myBall}."

#2
def real_roots(a,b,c)
    # Finds the real roots of a given quadratic equation.
      #  Ex) With an input of a=4, b=1, 4=0, roots should be 0.00 and -0.25. 
    
    determinant = b * b - 4 * a * c
    if determinant > 0
        r1 = ( -b + Math.sqrt(determinant) ) / (2*a)
        r2 = ( -b - Math.sqrt(determinant) ) / (2*a)
        puts "Roots are: #{r1} and #{r2}."
    elsif determinant == 0
        r1 = r2 = -b/(2*a) 
        puts "Roots are: #{r1} and #{r2}."
    else
        real = -b /(2*a) 
        imag = Math.sqrt(-determinant)/(2*a) 
        puts "Roots are:", real + imag, "and", real - imag,"."
	end
end

puts "Now computing the roots with the value a=4, b=1, c=0."
real_roots(4,1,0)



#3
def zeros_counter(lst)
   # For loop through a given simple list counting the
   # number of zeros and returning said number
    count=0
	for current in lst
		if current == 0
			count+=1
		end
	end
	return count
end
    
# set 2 0's in the list should output 2
myList = [ 1,2,4,5,0,2,0]
print "The number of zeros in the list: #{zeros_counter(myList)}."


#4
def min_max_return(lst)
	#Returns the max and the min in a new list from the argued list
	min=lst[0]
	max=lst[0]
	for i in lst
		if i >= max
			max = i
		elsif i<=min
			min = i
		end
	end
    rList = [max,min]
    return rList
end
myList2 = [154,26,3,5,103,2,46]
myList3 = min_max_return(myList2)
puts "With the given list of #{myList2}, the min and max list is #{myList3}."

#5
def triangle(rows)
	#Outputs n rows of Pascal's Triangle
	for rownum in (0..rows)
		newValue=1
		printing_list = [newValue]
		for iteration in (0..rownum)
			newValue = newValue * ( rownum-iteration ) * 1 / ( iteration + 1 )
			printing_list.push(newValue.to_i)
		end
        puts printing_list[0..-2].to_s
	end
    puts 
end
 
puts "How many rows would you like to have ?"
puts triangle((num = gets).to_i)
