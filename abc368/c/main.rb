#!/usr/bin/env ruby
# frozen_string_literal: true

# https://atcoder.jp/contests/abc368/tasks/abc368_c
# 周期性の問題
n = gets.to_s.to_i # 3
h = gets.split.map(&:to_i) # 6 2 2
t = 0 # t=3nであれば-3、それ以外は-1
# h[i]を5で割った余りを処理するロジック
(0...n).each do |i|
  x = h[i] / 5 # 6 / 5 = 1, 1回の周期で-5, 周期数を求める
  t += x * 3 # 1 x 3 = 3 1周期は3回なので、周期数に3を掛ける
  h[i] = h[i] % 5 # 余りを算出 余りは5未満となる
  while h[i] > 0 # あまりの処理はループで
    t += 1
    h[i] -= if t % 3 == 0 # t=3の倍数なら-3
              3
            else
              1
            end
  end
end
puts t
