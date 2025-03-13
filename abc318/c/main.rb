#!/usr/bin/env ruby
# frozen_string_literal: true

N, D, P = gets.split.map(&:to_i)
F = gets.split.map(&:to_i).sort.reverse

l = 0
r = 0
ans = 0
while r < N
  count = 0
  while r - l < D && r < N
    count += F[r]
    r += 1
  end
  ans += if count > P
           P
         else
           count
         end
  l = r
end
puts ans
