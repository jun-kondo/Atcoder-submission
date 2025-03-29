#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
p = gets.split.map(&:to_i)

(0...n).each do |i|
  r = 1
  (0...n).each do |j|
    r += 1 if p[i] < p[j]
  end
  puts r
end
