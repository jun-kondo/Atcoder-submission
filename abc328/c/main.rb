#!/usr/bin/env ruby
# frozen_string_literal: true

n, q = gets.split.map(&:to_i)
s = gets.chomp.chars

# 累積和の配列を作成
list = [0] * n
(1...n).each do |i|
  list[i] = list[i - 1] + (s[i - 1] == s[i] ? 1 : 0) # 加算判定 前の文字と同じかどうか?
end

ans = []
(0...q).each do
  l, r = gets.split.map(&:to_i)
  ans << (list[r - 1] - list[l - 1])
end
puts ans

# lとr間で区切られるsの部分文字列中に隣接する文字が何箇所あるかカウントするアルゴリズム
# カウントの累積和の配列listを作る。そうすることでrとlで配列を参照しlist[r]-list[l]すると \
# l~r間の要素の合計を少ない手数で調べられる。
# 三項演算子で前の文字と同じなら1を、そうでないなら0をlistの前の要素に加算するようにしている
# 最初に[0]*nの配列を作っておくのがポイントだった。
