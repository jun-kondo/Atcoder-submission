#!/usr/bin/env ruby
# frozen_string_literal: true

l, r = gets.split.map(&:to_i)
if l == 1 && r == 0
  puts 'Yes'
elsif l == 0 && r == 1
  puts 'No'
else
  puts 'Invalid'
end
