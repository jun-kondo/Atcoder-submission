#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)
last = {}
res = [-1] * n
n.times do |i|
  target = a[i]
  res[i] = last[target] if last.key?(target)
  last[target] = i + 1
end
puts res.join(' ')
