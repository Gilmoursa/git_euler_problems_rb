#Euler problem 1
def three_five(n) #1000
    total = 0
    (0...n).each do |x| 
        total+=x if(x%3==0 || x%5==0)
    end
    return total
end
#Euler problem 2
def even_fib(up_to) #4000000
	a=[1,2]
	while(a[-1]<up_to)
		a << a[-1]+a[-2]
	end
	sum = 0
	a.each do |x|
		sum+=x if x%2==0
	end
	return sum
end
#Euler Problem 3
def is_prime(num)
	(2..Math.sqrt(num).to_i).each{|x| return false if (num % x ==0)}
	true
end
def largest_prime_factor(num) #600851475143
	divisor = 3
	while(num >= divisor)
		if(is_prime(divisor)&&(num%divisor==0))
			new_divisor = divisor
			num/=divisor
		else
			divisor+=2
		end
	end
	return new_divisor
end	
#Euler problem 4
def is_palindrome(num)
	num.to_s == num.to_s.reverse
end
def largest_palindrome
	palindromes=[]
	999.downto(100) do |x|
		999.downto(100) do |y|
			product = x*y
			if is_palindrome(product)
				palindromes << product
			end
		end
	end
	palindromes.max
end

puts largest_palindrome




