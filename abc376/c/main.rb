#!/usr/bin/env ruby
# frozen_string_literal: true

# https://atcoder.jp/contests/abc376/tasks/abc376_c
n = gets.to_i
a = gets.split.map(&:to_i).sort
b = gets.split.map(&:to_i).sort

# 昇順にソート
# a[i] > b[i]が存在した場合-1
(0...n - 1).each do |i|
  if a[i] > b[i]
    puts '-1'
    exit
  end
end

# ↑をクリアしたら、a[i+1] > b[i]を降順から比較していき
# 条件を満たすa[i+1]が答え。
(n - 2).downto(0) do |i|
  if a[i + 1] > b[i]
    puts a[i + 1]
    exit
  end
end
# 何もなかった場合はa[0]が答えになる
puts a[0]
