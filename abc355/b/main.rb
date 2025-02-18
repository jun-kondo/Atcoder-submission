#!/usr/bin/env ruby
# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = a + b
a.sort!
c.sort!
(1...c.size).each do |x|
  (1...a.size).each do |y|
    if [a[y - 1], a[y]] == [c[x - 1], c[x]]
      puts 'Yes'
      exit
    end
  end
end
puts 'No'
