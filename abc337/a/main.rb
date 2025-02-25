#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
a = 0
b = 0

(0...n).each do
  x, y = gets.split.map(&:to_i)
  a += x
  b += y
end

if a > b
  puts 'Takahashi'
elsif b > a
  puts 'Aoki'
else
  puts 'Draw'
end
