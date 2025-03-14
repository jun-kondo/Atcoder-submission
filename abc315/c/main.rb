#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
fs = Array.new(n) { gets.split.map(&:to_i) }

fs = fs.sort_by { |f| -f[1] }
f1, s1 = fs[0]

ans = 0
(1...n).each do |i|
  f2, s2 = fs[i]
  res = if f1 == f2
          s1 + s2 / 2
        else
          s1 + s2
        end
  ans = [ans, res].max
end
puts ans
