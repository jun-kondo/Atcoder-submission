#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
ans = []
(0...n).each do
  s = gets.chomp
  ans << [s.size, s]
end
ans = ans.sort.map { |a| a[1] }.join
puts ans
