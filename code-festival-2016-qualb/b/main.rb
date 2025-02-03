#!/usr/bin/env ruby
# frozen_string_literal: true

n, a, b = gets.split.map(&:to_i)
s = gets.chomp.chars

tot = 0
tot_b = 0
ans = []

(0..n - 1).each do |i|
  ans << if s[i] == 'a' && tot < a + b
           tot += 1
           'Yes'
         elsif s[i] == 'b' && tot < a + b && tot_b < b
           tot += 1
           tot_b += 1
           'Yes'
         else
           'No'
         end
end

puts ans.join("\n")
