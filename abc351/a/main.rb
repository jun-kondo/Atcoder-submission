#!/usr/bin/env ruby
# frozen_string_literal: true

a = gets.split.map(&:to_i).sum
b = gets.split.map(&:to_i).sum

ans = 0
while a >= b
  ans += 1
  b += 1
end
puts ans
