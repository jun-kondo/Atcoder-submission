#!/usr/bin/env ruby
# frozen_string_literal: true

# https://atcoder.jp/contests/abc355/tasks/abc355_c
# 1..nの数値が順番に並んだビンゴ
n, t = gets.split.map(&:to_i)
# 行と列分のカウンタを作る
# カウンタの数値がnと等しくなればBingo判定
rows = Array.new(n, 0)
cols = Array.new(n, 0)
# 斜めカウンタ,これもnと等しくなればビンゴ
dia1 = 0
dia2 = 0
as = gets.split.map(&:to_i)
t.times do |k|
  a = as.shift
  a -= 1
  i = a / n # 行を求める
  j = a % n # 列を求める
  rows[i] += 1
  cols[j] += 1
  dia1 += 1 if i == j
  dia2 += 1 if i + j == n - 1
  if rows[i] == n || cols[j] == n || dia1 == n || dia2 == n
    puts k + 1
    exit
  end
end
puts '-1'
