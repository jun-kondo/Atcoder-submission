#!/usr/bin/env ruby
# frozen_string_literal: true

# 入力を受け取る
S = gets.chomp
n = S.length + 1

# 配列を初期化
a = Array.new(n, 0)

# 左から右に条件を満たすように構築
(0...n - 1).each do |i|
  a[i + 1] = a[i] + 1 if S[i] == '<'
end

# 右から左に条件を満たすように調整
(n - 2).downto(0) do |i|
  a[i] = [a[i], a[i + 1] + 1].max if S[i] == '>'
end

# 配列の総和を出力
puts a.sum
