#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
s = gets.chomp.chars
h = []
s.each_with_index do |c, i|
  h << i if c == '1'
end
ans = 0
center = h.size / 2
ofs = 1
(0...h.size).each do |i|
  if h[i] == h[center]
    ofs = 1
    next
  end

  ans += (h[i] - h[center]).abs - ofs
  ofs += 1
end
puts ans
