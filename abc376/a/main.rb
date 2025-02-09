#!/usr/bin/env ruby
# frozen_string_literal: true

n, c = gets.split.map(&:to_i)
t = gets.split.map(&:to_i)
res = 0
diff = 0
(0...n).each do |i|
  if i.zero? || t[i] - diff >= c
    res += 1
    diff = t[i]
  end
end
puts res
