#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
s = gets.chomp

x = ''
count = 0
ans = Set.new
s.each_char do |c|
  if c == x
    count += 1
  else
    x = c
    count = 1
  end
  ans << [x, count]
end
puts ans.size
