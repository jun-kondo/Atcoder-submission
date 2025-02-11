#!/usr/bin/env ruby
# frozen_string_literal: true

q = gets.to_i
res = []
last = 0
index = 0
q.times do
  type, x = gets.split.map(&:to_i)
  case type
  when 1
    # 配列resにはヘビの頭の座標が入る
    res << last
    last += x
  when 2
    # 先頭のヘビが抜ける
    # 先頭のヘビの配列番号をインクリメントして更新する
    index += 1
  when 3
    x -= 1
    # indexの位置でオフセットを取る
    puts res[index + x] - res[index]
  end
end
