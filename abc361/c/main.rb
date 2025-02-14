#!/usr/bin/env ruby
# frozen_string_literal: true

n, k = gets.split.map(&:to_i) # 5 2
a = gets.split.map(&:to_i).sort # 3 1 5 4 9

# ソートした数列のサイズ-kの両端の差を算出
# 最小値を比較する。を(0..k)の範囲で行う
ans = 10**9 + 1
(0..k).each do |i|
  d = a[n - 1 - k + i] - a[i]
  ans = [ans, d].min
end
puts ans
