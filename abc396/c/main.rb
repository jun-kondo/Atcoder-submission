#!/usr/bin/env ruby
# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
b = gets.split.map(&:to_i).sort.reverse
w = gets.split.map(&:to_i).sort.reverse

ans = 0
count = 0
nb = 0
nw = 0

while nb < n
  count += b[nb]
  count += w[nw] if nw < m && w[nw] > 0
  ans = [ans, count].max
  nb += 1
  nw += 1
end

puts ans
