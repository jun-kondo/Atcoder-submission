#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)

sum = a.sum
hash = a.tally.to_a.sort.each_with_object({}) do |(x, y), item|
  sum -= x * y # tallyでx:数値、y:個数になっている
  item[x] = sum
end

ans = []
(0...n).each do |i|
  target = a[i]
  ans << hash[target]
end
puts ans.join(' ')

# 数列aの数値より大きい数値の合計を出力する問題
# key: 数値、val: 数列aの合計-同じ数値の合計 のハッシュを作り
# 直接キーにアクセスすれば要素ごとの答えが出力されるようにした
