#!/usr/bin/env ruby
# frozen_string_literal: true

h, w, n = gets.split.map(&:to_i)
t = gets.chomp.chars
# グリッドの'.#'を1と0に置き換える
s = Array.new(h) { gets.chomp.tr('.#', '10') }.join.to_i(2)

bit_move = { 'L' => -1, 'R' => 1, 'U' => -w, 'D' => w }
ans = s
d = 0

# n回移動して最初から最後まで'.'の箇所をビット演算で求める
(0...n).each do |i|
  c = t[i]
  d += bit_move[c] # 合計の移動量をビットシフト
  ns = s << d # ビットマスクを作成
  ans &= ns # ans & ns
end
puts ans.digits(2).sum
