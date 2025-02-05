#!/usr/bin/env ruby
# frozen_string_literal: true

#
# 与えられる各区間は4通りの種類があり、区間の端点の閉・開が異なります。
# そのため、整数同士による厳密な比較を行うために、
# 各区間の端点を「正規化」して整数に変換する方法を用います。
#
# 具体的には、各端点に2を掛け、開区間の場合はその値を1だけ調整します。
#
# t = 1 （閉区間 [l, r]）の場合:
#   左端: l2 = l * 2, 右端: r2 = r * 2
#
# t = 2 （右側が開区間 [l, r)）の場合:
#   左端: l2 = l * 2, 右端: r2 = r * 2 - 1   ※ r を含まないため -1
#
# t = 3 （左側が開区間 (l, r]）の場合:
#   左端: l2 = l * 2 + 1, 右端: r2 = r * 2   ※ l を含まないため +1
#
# t = 4 （両側が開区間 (l, r)）の場合:
#   左端: l2 = l * 2 + 1, 右端: r2 = r * 2 - 1
#
# この正規化によって、すべての区間を閉区間として扱うことができ、
# 2つの区間 [a, b], [c, d] の共通部分があるかは、a <= d かつ c <= b の条件で調べられます。

# 標準入力から区間の個数 n を受け取る
n = gets.to_i

# 正規化した区間を保存する配列
intervals = []

# 各区間について、区間のタイプと区間の左右の端点(l, r)を読み込む
n.times do
  t, l, r = gets.split.map(&:to_i)

  # 区間を正規化する。t が区間のタイプを表す。
  l2, r2 = case t
           when 1 then [l * 2, r * 2]
           when 2 then [l * 2, r * 2 - 1]
           when 3 then [l * 2 + 1, r * 2]
           when 4 then [l * 2 + 1, r * 2 - 1]
           end

  intervals << [l2, r2]
end

# 共通部分を持つ区間のペアの個数をカウントする
result = 0

# すべての異なる区間の組 (i, j) (i < j) について
(n - 1).times do |i|
  ((i + 1)...n).each do |j|
    li, ri = intervals[i]
    lj, rj = intervals[j]

    # 2つの区間 [li, ri] と [lj, rj] が共通部分を持つのは、
    # li <= rj かつ lj <= ri の場合である
    result += 1 if li <= rj && lj <= ri
  end
end

# 結果を出力する
puts result
