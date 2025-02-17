#!/usr/bin/env ruby
# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
ans = 0
(0...n).each do |i|
  m -= h[i]
  break unless m >= 0

  ans += 1
end
puts ans
