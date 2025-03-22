#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)

l_list = [0] * n
l_set = Set.new
(0...n).each do |i|
  l_set << a[i]
  l_list[i] = l_set.size
end
r_list = [0] * n
r_set = Set.new
(n - 1).downto(0) do |i|
  r_set << a[i]
  r_list[i] = r_set.size
end

ans = 0
(0...n - 1).each do |i|
  sum = l_list[i] + r_list[i + 1]
  ans = [ans, sum].max
end
puts ans

# 入力値の配列の要素ごとにSetの長さを数えた配列を前、後両方から数えたものを用意する
# 例: a = [3, 1, 4, 1, 5]
# l: [1, 2, 3, 3, 4] , r: [4, 3, 3, 2, 1]
# 左から累積で何種類の数字があるか数えた配列、右から数えたものも用意する
# あとは左から順番に調べていく
# l[i] + r[i+1]の最大値が答え
