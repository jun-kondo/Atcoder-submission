#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp
t = gets.chomp
ans = []
l = 0
(0...s.size).each do |i|
  (l...t.size).each do |j|
    next unless s[i] == t[j]

    ans << j.succ
    l = j + 1
    break
  end
end
puts ans.join(' ')
