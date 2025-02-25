#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
q = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

x = 0
ans = 0
ok = true
while ok
  r = [0] * n
  (0...n).each do |i|
    r[i] = q[i] - a[i] * x
    ok = false if r[i] < 0
  end
  break unless ok

  y = 10**9
  (0...n).each do |i|
    next if b[i] == 0

    y = [y, r[i] / b[i]].min
  end
  ans = [ans, x + y].max
  x += 1
end
puts ans
