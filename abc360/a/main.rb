#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp.chars

rise = nil
miso = nil
s.each_with_index do |c, i|
  rise = i if c == 'R'
  miso = i if c == 'M'
end
if rise < miso
  puts 'Yes'
else
  puts 'No'
end
