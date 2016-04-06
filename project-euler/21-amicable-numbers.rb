# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.
#
# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
#
# Evaluate the sum of all the amicable numbers under 10000.
#



def proper_divisors_sum(n)
	divisors_sum = 1
	idx = 2
	while idx <= Math.sqrt(n)
		if n % idx == 0
			divisors_sum += idx
			divisors_sum += n / idx unless idx == n / idx
		end
		idx += 1
	end
	return divisors_sum
end

def amicable_pairs(top)
	sum = 0
	idx = 0
	while idx < top
		inv = proper_divisors_sum(idx)
		if inv > idx
			if proper_divisors_sum(inv) == idx
				sum += idx + inv
			end
		end
		idx += 1
	end
	return sum
end

puts amicable_pairs(10000)
