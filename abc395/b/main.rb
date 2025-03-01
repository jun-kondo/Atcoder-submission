#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
grid = Array.new(n) { Array.new(n, '#') }
(0...n).each do |i|
  (i...n - i).each do |j|
    (i...n - i).each do |k|
      grid[j][k] = '.' if i.odd?
      grid[j][k] = '#' if i.even?
    end
  end
end

puts grid.map(&:join)
