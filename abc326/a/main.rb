#!/usr/bin/env ruby
# frozen_string_literal: true

x, y = gets.split.map(&:to_i)

if x > y && (x - y) <= 3 # くだり
  puts 'Yes'
elsif x < y && (y - x) <= 2 # 上り
  puts 'Yes'
else
  puts 'No'
end
