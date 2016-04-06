# A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:
#
# 012   021   102   120   201   210
#
# What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?
#

class Integer
	def factorial
		self == 0 ? 1 : self * (self - 1).factorial
	end
end

def nth_lexicographic_permutation(n)
	string = ""
	n = n - 1
	digits = (0..9).to_a
	while digits.length > 0
		index, n = n.divmod((digits.length - 1).factorial)
		string += digits.delete_at(index).to_s
	end
	return string
end

puts nth_lexicographic_permutation(1_000_000)
