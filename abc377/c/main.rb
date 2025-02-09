#!/usr/bin/env ruby
# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
inside = ->(x) { x >= 1 && x <= n }
di = [+2, +1, -1, -2, -2, -1, +1, +2]
dj = [+1, +2, +2, +1, -1, -2, -2, -1]
res = Set.new
m.times do
  a, b = gets.split.map(&:to_i)
  res << [a, b] # 駒の場所
  # 8方向をチェック => 移動先
  8.times do |v|
    ni = a + di[v]
    nj = b + dj[v]
    # 盤外に出てないかチェック
    next unless inside[ni] && inside[nj]

    res << [ni, nj]
  end
end
ans = n * n - res.size
puts ans
