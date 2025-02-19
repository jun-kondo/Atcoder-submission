#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
ab = Array.new(n) { gets.split.map(&:to_i) }
ab = ab.sort_by { |a, b| b - a }

t = 0
head = 0
(0...n).each do |i|
  a, b = ab[i]
  t += a
  head = t + (b - a) if i == n - 1
end
puts head
