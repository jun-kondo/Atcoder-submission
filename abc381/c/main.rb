#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
s = gets.chomp.chars
ans = 0
(0...n).each do |i|
  next unless s[i] == '/'

  l = i
  r = i
  while l >= 0 && r < n
    break unless s[l - 1] == '1' && s[r + 1] == '2'

    l -= 1
    r += 1

  end
  ans = [r - l + 1, ans].max
end
puts ans
