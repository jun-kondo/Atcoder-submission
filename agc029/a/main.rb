#!/usr/bin/env ruby
# frozen_string_literal: true

# 入力の文字列を受け取り、1文字ずつ配列として処理
s = gets.chomp.chars

# 現在までの操作回数（交差するペア数）をカウントする変数
count = 0

# 現在までに出現した黒石('B')の数をカウントする変数
black_count = 0

# 入力された文字列を左から順に1文字ずつ処理
s.each do |c|
  if c == 'B'
    # 現在の石が黒('B')の場合、黒石の個数をインクリメント
    black_count += 1
  elsif c == 'W'
    # 現在の石が白('W')の場合、それまでに出現した黒石の数だけ交差が発生する
    # 現時点での黒石の個数を操作回数に加算
    count += black_count
  end
end

# 最大操作回数を出力
puts count
