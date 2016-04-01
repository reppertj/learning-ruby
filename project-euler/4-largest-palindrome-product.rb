# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

# I know about 'reverse', but I'm trying to use an impoverished language. We'll see how long that lasts.

def is_palindrome?(str)
	idx = 0
	while idx < str.length
		return false if str[idx] != str[str.length - 1 - idx]
		idx += 1
	end
	return true
end

def largest_palindrome
	idx1 = 999
	largest = 0
	while idx1 ** 2 > largest
		idx2 = 999
		while idx2 > 99
			if is_palindrome?((idx1 * idx2).to_s)
				largest = idx1 * idx2 if (idx1 * idx2) > largest
				break
			end
			idx2 -= 1
		end
		idx1 -= 1
	end
	return largest
end

puts largest_palindrome
