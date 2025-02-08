#!/usr/bin/env ruby
# frozen_string_literal: true

h, w, d = gets.split.map(&:to_i)
s = Array.new(h) { gets.chomp.chars }
# 床の座標をピックアップする
# product => 二重配列を作る
floors = (0...h).to_a.product((0...w).to_a).select { |(i, j)| s[i][j] == '.' }
ans = 0
# 加湿器を二箇所に置く => 二箇所の床の組み合わせの順列を作る => permutation(2)
floors.permutation(2) do |(i1, j1), (i2, j2)| # ブロック変数を要素ごとに括弧で囲まないとエラーになる
  ans = [ans,
         # 床を全探索する 条件はd以下のマンハッタン距離
         # どちらかの加湿器の範囲内にある床の数をcountする
         floors.count { |i, j| ((i - i1).abs + (j - j1).abs <= d) || ((i - i2).abs + (j - j2).abs <= d) }].max
end
puts ans
