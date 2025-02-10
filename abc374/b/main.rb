#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp.bytes
t = gets.chomp.bytes
ans = 0
length = s.size > t.size ? s.size : t.size
length.times do |i|
  if s[i] != t[i]
    ans = i + 1
    break
  end
end
puts ans
