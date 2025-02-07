#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_s.to_i
result = 0
pre_t = 0
(0...n).each do |_i|
  t, v = gets.split.map(&:to_i)
  diff = pre_t - t
  result += diff
  result = [result, 0].max
  pre_t = t
  result += v
end

puts result
