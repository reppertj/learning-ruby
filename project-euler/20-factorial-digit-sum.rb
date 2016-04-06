# n! means n × (n − 1) × ... × 3 × 2 × 1
#
# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
#
# Find the sum of the digits in the number 100!
#

def factorial_digit_sum(n)
	factorial = Hash.new{|h, k| k == 1 ? h[k] = 1 : h[k] = k * h[k-1]}
	factorial[100].to_s.split("").inject(0) {|sum, n| sum + n.to_i}
end

puts factorial_digit_sum(100)
