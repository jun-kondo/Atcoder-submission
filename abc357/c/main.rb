#!/usr/bin/env ruby
# frozen_string_literal: true

# https://atcoder.jp/contests/abc357/tasks/abc357_c
n = gets.to_i
s = ['#'] # 3^0 => 1x1からスタート
# x3をn回実行して3^nの正方形マスをつくる
(0...n).each do |_ni|
  m = s.size
  m3 = m * 3
  t = Array.new(m3) { '.' * m3 }
  # m3xm3の正方形tを作る。
  # ループの処理のお陰でmxmの正方形sの模様を引き継げる
  (0...m3).each do |i|
    (0...m3).each do |j|
      # こうするとsの座標は0~m-1で循環する
      t[i][j] = s[i % m][j % m]
    end
  end
  # 中央の部分を変更する処理
  # m=3 m3=9なら9x9の正方形の中央の3x3が'.'になる
  (0...m).each do |i|
    (0...m).each do |j|
      t[m + i][m + j] = '.'
    end
  end
  # スワップ、今のループで作ったTを次のループのsにする
  s, t = t, s
end
s.each { |a| puts a }
