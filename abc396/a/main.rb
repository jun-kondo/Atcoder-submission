#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)

num = nil
count = 0
(0...n).each do |i|
  if a[i] == num
    count += 1
    break if count > 2
  else
    num = a[i]
    count = 1
  end
end

puts count > 2 ? 'Yes' : 'No'
