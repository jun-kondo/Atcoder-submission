#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
p = gets.split.map(&:to_i)

one = p.shift
ans = 0
p.each do |x|
  ans = [ans, x - one + 1].max if x - one >= 0
end
puts ans
