#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)

visit = Hash.new { |h, k| h[k] = [] }
ans = 10**18
(0...n).each do |i|
  number = a[i]
  visit[number] << i
  if visit[number].size >= 2
    res = visit[number][-1] - visit[number][-2] + 1
    ans = [ans, res].min
  end
end

if visit.size == n
  puts '-1'
  exit
end
puts ans

# 同じ数字が2箇所ある部分列の最小の長さを求める問題
# ハッシュを使ってキーの番号のインデックスを配列に追加していく
# 配列の長さが2つ以上であれば最後と最後から二番目の値を両端とする部分列の長さを求めている
# 計算のたびに最小値を更新する
