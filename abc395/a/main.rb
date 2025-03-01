#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)

res = true
(0...n - 1).each do |i|
  res = false unless a[i] < a[i + 1]
end
puts res ? 'Yes' : 'No'
