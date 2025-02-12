#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)

res = a.size
(0...n - 1).each do |i|
  diff = a[i + 1] - a[i]
  (i + 1...n).each do |j|
    break unless diff == a[j] - a[j - 1]

    res += 1
  end
end
puts res
