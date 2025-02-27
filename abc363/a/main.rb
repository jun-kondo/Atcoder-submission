#!/usr/bin/env ruby
# frozen_string_literal: true

r = gets.to_i
ans = 10**9
[399, 299, 199, 99].each do |x|
  x -= r
  ans = [ans, x + 1].min if x >= 0
end
puts ans
