#!/usr/bin/env ruby
# frozen_string_literal: true

# https://atcoder.jp/contests/abc367/tasks/abc367_c
_n, k = gets.split.map(&:to_i) # 3 2
r = gets.split.map(&:to_i) # 2 1 3
r = r.map { |n| (1..n).to_a } # [[1, 2], [1], [1,2,3]]にする
# ↑で作ったrの各要素すべての組み合わせを作成する => product
# [[1,1,1],[2,1,2]...[2,1,3]]みたいな配列が出来る
# selectで数列の総和がkの倍数になるものを列挙する
ans = r[0].product(*(r[1..])).select { |n| (n.sum % k).zero? }
# 一つの二重配列から全要素をproductで全列挙するときは
# 最初の要素をレシーバーにして引数に残りの要素を入れる => *(r[1..])
ans.sort.each { |n| puts n.join(' ') } # 辞書順に並べて出力
