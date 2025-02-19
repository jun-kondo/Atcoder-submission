#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp.chars
num = s[-3..].join.to_i
if num > 0 && num < 350 && num != 316
  puts 'Yes'
else
  puts 'No'
end
