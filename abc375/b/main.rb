#!/usr/bin/env ruby
# frozen_string_literal: true

cal_cost = ->(sx, sy, x, y) { Math.sqrt((sx - x)**2 + (sy - y)**2) }
n = gets.to_i
sx = 0
sy = 0
ans = 0
n.times do
  x, y = gets.split.map(&:to_i)
  ans += cal_cost[sx, sy, x, y]
  sx = x
  sy = y
end
ans += cal_cost[sx, sy, 0, 0]
puts ans
