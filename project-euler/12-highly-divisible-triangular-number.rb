# The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:
#
# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
#
# Let us list the factors of the first seven triangle numbers:
#
#  1: 1
#  3: 1,3
#  6: 1,2,3,6
# 10: 1,2,5,10
# 15: 1,3,5,15
# 21: 1,3,7,21
# 28: 1,2,4,7,14,28
# We can see that 28 is the first triangle number to have over five divisors.
#
# What is the value of the first triangle number to have over five hundred divisors?
#

def factors(n)
	factors = [n]
	idx = 2
	while idx < factors[-1]
		if factors[-1] % idx == 0
			new = factors[-1] / idx
			factors.pop
			factors.push(idx)
			factors.push(new)
			idx = 1
		end
		idx += 1
	end
	return factors
end

def num_factors(n)
	factors(n).inject(Hash.new(1)) { |h, e| h[e] += 1 ; h }.values.reduce(:*)
end


def triangular_number(n)
	n * (n + 1) / 2
end

def first_triangular_number_over_n_divisors(n)
	idx = 1
	while true
		num = triangular_number(idx)
		if num_factors(num) > n
			return num
		end
		idx += 1
	end
end

puts first_triangular_number_over_n_divisors(500)
