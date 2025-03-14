#!/usr/bin/env ruby
# frozen_string_literal: true

M = gets.to_i
D = gets.split.map(&:to_i)

d_sum = D.sum
half = d_sum / 2 + 1

count = 0
(0...M).each do |m|
  days = D[m]
  (0...days).each do |d|
    count += 1
    if count == half
      puts [m + 1, d + 1].join(' ')
      exit
    end
  end
end
