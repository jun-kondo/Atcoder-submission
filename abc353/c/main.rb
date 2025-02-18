#!/usr/bin/env ruby
# frozen_string_literal: true

M = 10**8
n = gets.to_i
a = gets.split.map(&:to_i).sort

ans = 0
# 数列aからAi、Ajをピックしたときの総和を求める
(0...n).each do |i|
  ans += a[i] * (n - 1)
end
r = n - 1
(0...n).each do |i|
  r -= 1 while (r >= 0) && (a[i] + a[r] >= M)
  # ([r, i].max + 1)でjの位置を求める
  ans -= (n - ([r, i].max + 1)) * M
end
puts ans
