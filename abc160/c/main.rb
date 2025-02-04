#!/usr/bin/env ruby
# frozen_string_literal: true

K, N = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

distances = []
(1...N).each do |i|
  distances << A[i] - A[i - 1]
end

# 一周の距離から最初と最後を結ぶ距離を加えたもの
distances << (K - A[-1] + A[0])
# 最大距離を避けるように全周から引く
total_distance = distances.sum
max_gap = distances.max
shortest_distance = total_distance - max_gap

# 最短距離を出力
puts shortest_distance
