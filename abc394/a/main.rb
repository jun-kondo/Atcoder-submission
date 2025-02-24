#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp.chars
ans = ''
(0...s.size).each do |i|
  ans += s[i] if s[i] == '2'
end
puts ans
