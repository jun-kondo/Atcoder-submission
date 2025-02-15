#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_s.to_i
a = gets.split.map(&:to_i)

ans = 0
loop do
  a = a.sort.reverse
  break if a[1] <= 0

  a[0] -= 1 if a[0] > 0
  a[1] -= 1 if a[1] > 0
  ans += 1
end
puts ans
