#!/usr/bin/env ruby
# frozen_string_literal: true

ans = 0
12.times do |i|
  s = gets.chomp
  ans += 1 if s.size == i + 1
end
puts ans
