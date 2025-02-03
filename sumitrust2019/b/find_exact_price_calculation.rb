#!/usr/bin/env ruby
# frozen_string_literal: true

# `N` を標準入力から取得
# `gets` は文字列を受け取るため、`to_i` を使用して整数に変換
N = gets.to_i

# `1` から `N` までの範囲でループ
(1..N).each do |x|
  # `x * 1.08` の計算結果を整数へ変換（税率計算などに使われる）
  price = (x * 1.08).to_i

  # 計算した `price` と標準入力 `N` を比較
  # 一致した場合、その `x` を出力しプログラムを終了
  if price == N
    puts x
    exit
  end
end

# 全てのループを試しても一致する `x` が見つからない場合
# 残念ながら条件を満たす値がないため `:(` を出力
puts ':('
