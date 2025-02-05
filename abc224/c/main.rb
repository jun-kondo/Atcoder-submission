#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_s.to_i # ユーザから数値nを受け取り、これは平面上の点の数を表します

P = Array.new(n) { gets.split.map(&:to_i) } # ユーザからn個の点の座標を受け取り、それを配列Pに格納します

count = 0 # 正の面積を持つ三角形の数をカウントするための変数を0で初期化します

# 以下の3つのループにより、全ての可能な3点の組合せを生成します
(n - 1).times do |i|
  ((i + 1)...n).each do |j|
    ((j + 1)...n).each do |k|
      # 各ループにおいて取り出された3点の座標を取得します
      x1, y1 = P[i]
      x2, y2 = P[j]
      x3, y3 = P[k]

      # 行列式（面積）を計算します。3点が同一直線上にある場合、行列式は0になります
      area = x1 * y2 + x2 * y3 + x3 * y1 - y1 * x2 - y2 * x3 - y3 * x1

      # 面積が正（行列式が0でない）であれば、countをインクリメントします
      count += 1 if area != 0
      # 力技
      # if x1 == x2 && x2 == x3 || y1 == y2 && y2 == y3
      #   next
      # elsif (x1 - x2).to_f / (y1 - y2) == (x2 - x3).to_f / (y2 - y3)
      #   next
      # else
      #   count += 1
      # end
    end
  end
end

# 正の面積を持つ三角形の数を出力します
puts count
