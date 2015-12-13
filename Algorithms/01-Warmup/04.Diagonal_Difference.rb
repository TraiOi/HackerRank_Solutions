#!/bin/ruby

# Given a square matrix of size N×N, calculate the absolute difference between the sums of its diagonals.
# Input Format
# The first line contains a single integer, N. The next N lines denote the matrix's rows, with each line containing N space-separated integers describing the columns.
# Output Format
# Print the absolute difference between the two sums of the matrix's diagonals as a single integer.
# Sample Input
# | 3
# | 11 2  4
# | 4  5  6
# | 10 8 -12
# Sample Output
# | 15
# Explanation
# The primary diagonal is:
# | 11
# |     5
# |         -12
# Sum across the primary diagonal: 11 + 5 - 12 = 4
# The secondary diagonal is:
# |         4
# |     5
# | 10
# Sum across the secondary diagonal: 4 + 5 + 10 = 19
# Difference: |4 - 19| = 15

n = gets.strip.to_i
a = Array.new(n)
for a_i in (0..n-1)
    a_t = gets.strip
    a[a_i] = a_t.split(' ').map(&:to_i)
end

def difference(a, n)
	i,j=-1,n
	a1,a2 = [],[]
	a.each do |x|
		a1 << x[i+=1]
		a2 << x[j-=1]
	end
	return (a1.inject{|x,y| x+y}-a2.inject{|x,y| x+y}).abs
end

print difference(a, n)