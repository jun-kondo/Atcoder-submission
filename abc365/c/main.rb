#!/usr/bin/env ruby
# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

f = lambda { |x|
  s = a.sum { |ai| [x, ai].min }
  s <= m
}
INF = 1_001_001_001
if f[INF] # 入力値の配列aの合計がmを超えてないか確認 => 超えているとLambda内のxに何を代入しても成立してしまう
  puts 'infinite'
else
  # 二分探索
  ac = 0 # 下限
  wa = INF # 上限
  while ac + 1 < wa # 上限と下限が隣り合わせになるまで
    wj = (ac + wa) / 2 # waiting judge: 判定ポイント 問題文でのxに相当
    if f[wj]
      ac = wj # 下限をwjに寄せる
    else
      wa = wj # 上限をwjに寄せる
    end
  end
  puts ac
end
