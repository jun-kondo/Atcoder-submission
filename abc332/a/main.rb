#!/usr/bin/env ruby
# frozen_string_literal: true

n, s, k = gets.split.map(&:to_i)
total = 0
(0...n).each do
  p, q = gets.split.map(&:to_i)
  total += p * q
end
if total >= s
  puts total
else
  puts k + total
end
