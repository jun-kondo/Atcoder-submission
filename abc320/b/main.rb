#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp
l = s.size

ans = 1
(0...l - 1).each do |i|
  (i + 1...l).each do |j|
    substring = s[i..j]
    ans = [substring.size, ans].max if substring == substring.reverse
  end
end
puts ans
