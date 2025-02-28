#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
wx = Array.new(n) { gets.split.map(&:to_i) }

ans = 0
24.times do |i|
  res = 0
  (0...n).each do |j|
    w, x = wx[j]
    res += w if ((i + x) % 24 >= 9) && ((i + x) % 24 < 18)
  end
  ans = [ans, res].max
end
puts ans
