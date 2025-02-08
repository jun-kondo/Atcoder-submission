#!/usr/bin/env ruby
# frozen_string_literal: true

n, d = gets.split.map(&:to_i)
s = gets.chomp.chars.reverse

count = 0
s.each_index do |i|
  if s[i] == '@'
    s[i] = '.'
    count += 1
  end
  break if count == d
end
puts s.reverse.join
