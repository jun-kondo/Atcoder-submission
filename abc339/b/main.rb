#!/usr/bin/env ruby
# frozen_string_literal: true

# https://atcoder.jp/contests/abc339/tasks/abc339_b
h, w, n = gets.split.map(&:to_i)

grid = Array.new(h) { ['.'] * w }
# 初期位置
i = 0
j = 0
# 上下左右の移動、方向に対してi, jを増減させる関数をセット
move = {
  0 => -> { i -= 1 },   # U
  90 => -> { j += 1 },  # R
  180 => -> { i += 1 }, # D
  270 => -> { j -= 1 }  # L
}
direct = 0

n.times do
  if grid[i][j] == '.'
    grid[i][j] = '#'
    direct = (direct + 90) % 4
  else
    grid[i][j] = '.'
    direct = (direct - 90) % 4
  end
  move[direct].call
  i = (i + h) % h # hの上限を超えても参照外エラーが出ないようにする
  j = (j + w) % w # wの上限を超えても参照外エラーが出ないようにする
end
grid.each { |a| puts a.join }
