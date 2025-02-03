#!/usr/bin/env ruby
# frozen_string_literal: true

n, m, c = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
As = Array.new(n) { gets.split.map(&:to_i) }
result = 0

(0..n - 1).each do |i|
  total = c
  (0..m - 1).each do |j|
    total += As[i][j] * b[j]
  end
  result += 1 if total > 0
end

puts result
