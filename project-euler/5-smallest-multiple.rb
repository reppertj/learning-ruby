# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def factors(n)
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
	return factors
end

def lcm(arr)
	primes = arr.map {|n| factors(n)}
	primes.flatten.uniq.inject(1) do |product, q|
		max = 0
		idx = 0
		while idx < primes.length
			count = primes[idx].count{|x| x == q}
			max = count if count > max
			idx += 1
		end
		product * (q ** max)
	end
end

puts lcm(1..20)
