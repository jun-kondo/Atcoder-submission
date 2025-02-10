#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp.chars
key = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
from = s.index('A')
ans = 0
key.each_char do |c|
  to = s.index(c)
  ans += (to - from).abs
  from = to
end
puts ans
