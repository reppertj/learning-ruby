# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def sum_of_multiples(n)
	sum = 0
	idx = 0
	while idx < n
		sum += idx if idx % 3 == 0 || idx % 5 == 0
		idx += 1
	end
	return sum
end

puts sum_of_multiples(1000)
