# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#
# What is the 10 001st prime number?
# (Some more fun with prime functions in here)

def prime_sieve(n)
	arr = (0..n).to_a
	for idx1 in 2..n
		next if arr[idx1] == nil
		idx2 = idx1 ** 2
		while idx2 < n
			arr[idx2] = nil
			idx2 += idx1
		end
	end
	arr.compact[2..-2]
end

def nth_prime(n)
	primes = prime_sieve(n * 2)
	idx = 2
	while primes.length < n
		idx += 1
		primes = prime_sieve(n * idx)
	end
	return primes[n - 1]
end

puts nth_prime(10001)
