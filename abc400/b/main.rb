#!/usr/bin/env ruby
# frozen_string_literal: true

n, m = gets.split.map(&:to_i)

x = 0
(0..m).each do |i|
  x += n**i
end
if x <= 10**9
  puts x
else
  puts 'inf'
end
