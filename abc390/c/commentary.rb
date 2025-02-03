#!/usr/bin/env ruby
# frozen_string_literal: true

# 入力を受け取る処理
# 1行目の入力を受け取り、整数 H (行数) と W (列数) を取得
H, W = gets.split.map(&:to_i)

# 次の H 行を受け取り、格子 (grid) のデータを配列として格納
# 例: grid[0] は最初の行の文字列データ
grid = Array.new(H) { gets.chomp }

# 黒マス (#) の範囲を特定するための変数を初期化
# min_row, max_row は黒マスが存在する最小行と最大行
# min_col, max_col は黒マスが存在する最小列と最大列
# 初期値は範囲外となる大きな値 (min_row, min_col) や負の値 (max_row, max_col) に設定
min_row = H
max_row = -1
min_col = W
max_col = -1

# 格子を全探索し、黒マス (#) の位置を確認して範囲情報を計算
H.times do |i|           # 縦方向 (行) の走査
  W.times do |j|         # 横方向 (列) の走査
    next unless grid[i][j] == '#' # 黒マス (#) を見つけた場合

    # 最小/最大の行番号 (min_row, max_row) を更新
    min_row = [min_row, i].min
    max_row = [max_row, i].max

    # 最小/最大の列番号 (min_col, max_col) を更新
    min_col = [min_col, j].min
    max_col = [max_col, j].max
  end
end

# 黒マスの範囲が min_row〜max_row と min_col〜max_col に設定された段階で、
# 格子全体を探索し、条件を確認する

# 判定結果を格納する変数 (初期値は true)
possible = true

# 全格子を再び探索
H.times do |i|           # 縦方向の走査
  W.times do |j|         # 横方向の走査
    # 黒マス範囲内のチェック
    if min_row <= i && i <= max_row && min_col <= j && j <= max_col
      if grid[i][j] == '.'
        # 黒マス範囲内に白マスがあれば不適格と判断し、探索を打ち切る
        possible = false
        break
      end
    elsif grid[i][j] == '#'
      # 黒マス範囲外に黒マスがあれば不適格と判断し、探索を打ち切る
      possible = false
      break
    end
  end
  # 外側ループも打ち切る（`break` が内側から来た場合）
  break unless possible
end

# 出力
puts possible ? 'Yes' : 'No'
