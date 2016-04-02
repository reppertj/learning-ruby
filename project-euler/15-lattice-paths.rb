# Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
#
#
# How many such routes are there through a 20×20 grid?
#

def lattice_paths(r)
	factorial = Hash.new{|h, k| k == 1 ? h[k] = 1 : h[k] = k * h[k-1]}
	factorial[2 * r] / (factorial[r] ** 2) # from n choose r -- cf. Pascal's triangle
end

puts lattice_paths(20)
