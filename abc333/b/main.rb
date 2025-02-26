#!/usr/bin/env ruby
# frozen_string_literal: true

a, b = gets.chomp.chars.map(&:ord)
c, d = gets.chomp.chars.map(&:ord)

near = lambda { |x, y|
  x, y = y, x if x > y
  y - x == 1 || y - x == 4
}
if near[a, b] == near[c, d]
  puts 'Yes'
else
  puts 'No'
end
