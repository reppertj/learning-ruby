# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

def max_factor(n)
	factors = [1, n]
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
	return factors[-1]
end

puts max_factor(600851475143)
