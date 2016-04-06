# A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.
#
# A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.
#
# As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.
#
# Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.
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

def abundant?(n)
	proper_divisors_sum(n) > n
end

def non_abundant_sums

	abundants = []

	idx = 2
	while idx <= 28123
		if abundant?(idx)
			abundants.push(idx)
		end
		idx += 1
	end

	sum_of_abundants = (1..28123).to_a.product([false]).to_h

	abundants.each do |i|
		abundants.each do |j|
			break if j > i
			sum_of_abundants[i + j] = true
		end
	end

	return sum_of_abundants.keep_if {|k, v| v == false}.keys.reduce(:+)

end

puts non_abundant_sums
