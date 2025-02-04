#!/usr/bin/env ruby
# frozen_string_literal: true

# 入力を受け取る
H, W = gets.split.map(&:to_i)

# 縦または横が1の場合、駒が動けるのは初期位置だけ
if H == 1 || W == 1
  puts 1
else
  # 全盤面で到達可能なマスを計算
  total_cells = H * W
  # 合計マス数の半分を切り上げ（奇数なら+1、偶数ならそのまま）
  reachable_cells = (total_cells + 1) / 2
  # 結果を出力
  puts reachable_cells
end
