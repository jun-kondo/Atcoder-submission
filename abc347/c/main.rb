#!/usr/bin/env ruby
# frozen_string_literal: true

N, A, B = gets.split.map(&:to_i)
W = A + B

d_list = gets.split.map { |d| d.to_i % W }

extended_list = d_list.map { |d| d + W }
d_full = d_list + extended_list

d_full.sort!

ans = false
(0...N).each do |i|
  target = d_full[i] + A

  c = d_full.bsearch_index { |x| x >= target }

  ans ||= (c == N + i)
end

puts ans ? 'Yes' : 'No'

# 数値リストを取得し、W で剰余を計算
# d_list を2倍に拡張する（後半は各要素に W を加えた値）
#
# d_fullの中から、各候補となる開始位置iについて検証する
# ※実際には、調べる対象となる候補の範囲は d_list の要素数分で十分です
# 候補の休日区間の開始点は d_full[i] とする
# その休日区間は、開始点からA日間（[d_full[i], d_full[i] + A)）が休日となる
# ここで二分探索（bsearch_index）を使い、d_full中から
# 最初に target 以上となる要素のインデックスを求める
# すなわち、d_full[i]から始まる連続部分で、休日区間内に収まる限界がどこかを探す
# もし候補の開始点iから連続するN個の予定がすべて休日区間内に収まっているなら、
# つまり、d_full[i]からd_full[i+N-1]までの全てが target 未満になるはずであり、
# このとき、二分探索で求めたインデックスcはちょうど i+N となる
#
# ans ||= (c == N + i)
# この条件が成立すれば、どこか一箇所で条件を満たしたことになり、結果は "Yes"
