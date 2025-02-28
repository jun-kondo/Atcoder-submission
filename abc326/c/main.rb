#!/usr/bin/env ruby
# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort

ans = 0
r = 0
(0...n).each do |l|
  r += 1 while r < n && a[r] < (a[l] + m)
  ans = [ans, r - l].max
end
puts ans

# https://atcoder.jp/contests/abc326/tasks/abc326_c
# 尺取法なので入力した配列aはソートしておく
# 数列(n個)の例: 2 3 5 7 11 13 17 19
# a[r]はa[l]+m未満なのでその条件を満たす間はrを右に進める
# 配列の要素を比較していることに注意
# r - lでl，r間の配列の要素の個数を求めている。rを伸ばしきったところで最大値(ans)を更新する
# 半開区間 [x, x+m) x以上x+m未満
