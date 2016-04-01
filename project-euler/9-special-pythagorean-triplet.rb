# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def special_pythag_triplet(n)
	a = 1
	while a < n
		b = 1
		while (a + b) < n
			c = 1
			while c < n
				return a * b * c if (a + b + c) == n && (a ** 2 + b ** 2) == c ** 2
				c += 1
			end
			b += 1
		end
		a += 1
	end
	return false
end

puts special_pythag_triplet(1000)
