#!/usr/bin/env ruby
# frozen_string_literal: true

M, D = gets.split.map(&:to_i)
y, m, d = gets.split.map(&:to_i)

if m == M && d == D
  y += 1
  m = 1
  d = 1
elsif d == D
  m += 1
  d = 1
else
  d += 1
end

puts "#{y} #{m} #{d}"
