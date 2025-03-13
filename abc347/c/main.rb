#!/usr/bin/env ruby
# frozen_string_literal: true

n, a, b = gets.split.map(&:to_i)
d = gets.split.map(&:to_i)
w = a + b
(0...n).each { |i| d[i] %= w }
(0...n).each { |i| d.push(d[i] + w) }
d.sort!
(0...d.size - 1).each do |i|
  if d[i + 1] - d[i] >= b + 1
    puts 'Yes'
    exit
  end
end
puts 'No'
