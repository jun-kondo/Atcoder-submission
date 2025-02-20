#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
xy = Array.new(n) { gets.split.map(&:to_i) }
ans = []

(0...n).each do |i|
  res = []
  (0...n).each do |j|
    xa, ya = xy[i]
    xb, yb = xy[j]
    d = Math.sqrt((xa - xb)**2 + (ya - yb)**2)
    res << [-d, j.succ]
  end
  ans << res.sort.first.last
end
puts ans
