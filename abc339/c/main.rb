#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)

sum = 0
res = 0
(0...n).each do |i|
  sum += a[i]
  next unless sum < 0

  d = sum.abs
  res += d
  sum += d
end
puts res + a.sum
