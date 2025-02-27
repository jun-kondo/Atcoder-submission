#!/usr/bin/env ruby
# frozen_string_literal: true

def check_row
  A.all? { |row| row.tally.values.all?(1) }
end

def check_col
  A.transpose.all? { |col| col.tally.values.all?(1) }
end

def check_three_by_three
  (0...3).all? do |block_row|
    row_start = block_row * 3
    rows = A[row_start, 3]
    (0...3).all? do |block_col|
      col_start = block_col * 3
      block = rows.flat_map { |row| row[col_start, 3] }
      block.tally.values.all?(1)
    end
  end
end

n = 9
A = Array.new(n) { gets.split.map(&:to_i) }
if check_row && check_col && check_three_by_three
  puts 'Yes'
else
  puts 'No'
end

# 9x9の各マス目が条件を満たしているかチェックする問題
# 9個の3x3をチェックする実装が難しかった
# A[row_start, 3]で3行抜いて、flat_mapに渡してブロック内でrow[col_start, 3]で3列を取り出し一次元配列にする
# 開始地点は0~2のループで3を掛けてやれば動的に算出できる
