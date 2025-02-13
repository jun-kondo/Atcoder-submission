#!/usr/bin/env ruby
# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

# 条件チェック用のラムダ
f = ->(x) { a.sum { |ai| [x, ai].min } <= m }
INF = 1_001_001_001

if f[INF]
  # 無限大に対して条件が成立する場合は "infinite" を出力
  puts 'infinite'
else
  # Range#bsearch を利用して、条件を満たさなくなる最小の x を求め、その前の値が求める値
  smallest_false = (0..INF).bsearch { |x| !f[x] }
  puts smallest_false - 1
end
