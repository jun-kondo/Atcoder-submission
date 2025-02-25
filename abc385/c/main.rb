#!/usr/bin/env ruby
# frozen_string_literal: true

# https://atcoder.jp/contests/abc385/tasks/abc385_c
n = gets.to_s.to_i
h = gets.split.map(&:to_i)

ans = 0
# 長さが1の配列だとバグるので終端はnも含むようにセット
(1..n).each do |interval| # 数列を調べる間隔を1~nで探索
  (0...interval).each do |start| # 数列を調べる視点0~w(interval)-1
    arr = []
    # step(上限値, 間隔)
    start.step(n - 1, interval) { |i| arr << h[i] }

    val = -1, len = 0
    arr.each do |x|
      # 同じ要素が連続しているかどうか調べる。falseなら1にリセット
      if val == x
        len += 1
      else
        val = x
        len = 1
      end
      ans = [ans, len].max
    end
  end
end
puts ans
