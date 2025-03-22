#!/usr/bin/env ruby
# frozen_string_literal: true

n, R, C = gets.split.map(&:to_i)
s = gets.chomp
r = 0
c = 0
smokes = Set.new
smokes.add([0, 0])

ans = []
s.each_char do |direction|
  case direction
  when 'N'
    r += 1
  when 'W'
    c += 1
  when 'S'
    r -= 1
  when 'E'
    c -= 1
  end

  smokes.add([r, c])
  tr = r + R
  tc = c + C

  ans << if smokes.include?([tr, tc])
           1
         else
           0
         end
end
puts ans.join

# 東西南北に動く焚き火の煙の範囲に現在地(R,C)が含まれるか求める問題
# 煙の座標を更新していると計算量が足らないので、焚き火と現在地を動かす。
# これによって相対的な煙と現在地の関係を調べることができる。
# この場合本来煙とは逆の方向に動かす
#
# when節は焚き火の座標を動かしている
# 動かした焚き火の座標をSetに加えて行く
# tr, tcの更新は現在の立ち位置を更新している
# あとは現在の立ち位置がSetの座標に含まれているか調べる
# これによってO(N)の計算量で済む
