#!/usr/bin/env ruby
# frozen_string_literal: true

n, k = gets.split.map(&:to_i)
s = gets.chomp.chars
succ = 0
res = 0
(0...n).each do |i|
  if s[i] == 'O'
    succ += 1
    if succ == k
      res += 1
      succ = 0
    end
  else
    succ = 0
  end
end
puts res
