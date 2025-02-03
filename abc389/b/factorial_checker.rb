#!/usr/bin/env ruby
# frozen_string_literal: true

# ユーザーから整数を1つ入力として受け取る
x = gets.to_i

# 2から20までの範囲（各整数）をループする
(2..20).each do |i|
  # 階乗を計算するための変数を初期化
  f = 1

  # 1から現在の数値iまでループし、階乗を計算
  (1..i).each do |j|
    f *= j # fにjを掛け合わせて階乗を計算
  end

  # 計算した階乗が入力値と一致する場合、iを出力
  puts i if f == x
end
