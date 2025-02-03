#!/usr/bin/env ruby
# frozen_string_literal: true

# メインの処理を行う関数
def solve
  # 標準入力から数値を一つ取得し、変数 n に格納
  n = gets.to_i
  # 標準入力からスペース区切りの数値を配列として取得し、各要素を整数型に変換して x に格納
  x = gets.split.map(&:to_i)

  # 初期値として答えを正の無限大に設定
  ans = Float::INFINITY

  # p を 1 から 100 まで順に試す
  (1..100).each do |p|
    # 現在の p を基準に、全ての xi の (xi - p)^2 の合計を計算
    tot = x.sum { |xi| (xi - p) ** 2 }
    # 現在の合計値 tot とこれまでの最小値 ans を比較し、より小さい方を ans に格納
    ans = [ans, tot].min
  end

  # 最終的な最小値を出力する
  puts ans
end

# メインの関数を実行
solve