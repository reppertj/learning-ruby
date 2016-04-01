# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.
#

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

puts prime_sieve(2000000).reduce(:+)
