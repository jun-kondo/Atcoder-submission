#!/usr/bin/env ruby
# frozen_string_literal: true

n, x, y = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort.reverse
b = gets.split.map(&:to_i).sort.reverse
tot_a = 0
tot_b = 0
(0...n).each do |i|
  tot_a += a[i]
  tot_b += b[i]
  if tot_a > x || tot_b > y
    puts i + 1
    exit
  end
end
puts n
