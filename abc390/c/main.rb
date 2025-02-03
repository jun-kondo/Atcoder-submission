#!/usr/bin/env ruby
# frozen_string_literal: true

# 入力の読み取り
H, W = gets.split.map(&:to_i)
grid = Array.new(H) { gets.chomp }

# 黒マスの範囲を計算
min_row, max_row = H, -1
min_col, max_col = W, -1

H.times do |i|
  W.times do |j|
    if grid[i][j] == '#'
      min_row = [min_row, i].min
      max_row = [max_row, i].max
      min_col = [min_col, j].min
      max_col = [max_col, j].max
    end
  end
end

# 黒マス範囲内の判定
possible = true
H.times do |i|
  W.times do |j|
    if min_row <= i && i <= max_row && min_col <= j && j <= max_col
      possible = false if grid[i][j] == '.'
    else
      possible = false if grid[i][j] == '#'
    end
  end
end

# 出力
puts possible ? "Yes" : "No"
