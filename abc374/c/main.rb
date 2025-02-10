#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
k = gets.split.map(&:to_i)

ans = 10**9
(1...(1 << n)).each do |s|
  a = 0
  b = 0
  n.times do |i|
    if (s >> i) & 1 == 1
      b += k[i]
    else
      a += k[i]
    end
  end
  now = [a, b].max
  ans = [ans, now].min
end
puts ans
