#!/usr/bin/env ruby
# frozen_string_literal: true

# https://atcoder.jp/contests/abc362/tasks/abc362_b
ax, ay = gets.split.map(&:to_i)
bx, by = gets.split.map(&:to_i)
cx, cy = gets.split.map(&:to_i)

# 三平方の定理
ab2 = (ax - bx)**2 + (ay - by)**2
bc2 = (bx - cx)**2 + (by - cy)**2
ca2 = (ax - cx)**2 + (ay - cy)**2
# 直角を挟んだ二点の距離の二乗の合計と斜辺の二乗の距離が等しい
if ab2 + bc2 == ca2 || ab2 + ca2 == bc2 || bc2 + ca2 == ab2
  puts 'Yes'
else
  puts 'No'
end
