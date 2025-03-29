#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
s = gets.chomp
t = gets.chomp

ans = 0
(0...n).each do |i|
  ans += 1 unless s[i] == t[i]
end
puts ans
