# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
#
# What is the sum of the digits of the number 2^1000?
#

def power_digit_sum(base, exponent)
	(2 ** 1000).to_s.split("").inject(0) {|sum, n| sum + n.to_i}
end

puts power_digit_sum(2, 1000)
