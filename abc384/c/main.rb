#!/usr/bin/env ruby
# frozen_string_literal: true

a = gets.split.map(&:to_i) # 入力値: 400 500 600 700 800
n = a.size # 入力値は5個
ranking = []

# bit全探索
# 今回0はありえないので1~31を探索する
(1...(1 << n)).each do |s|
  name = ''
  score = 0
  # ビット全探索内側ループ
  # 0 ~ n-1の各ビット位置をループ
  (0...n).each do |i| # 今回はi: 0~4。5桁のビットだから
    # ビットシフトとビットAND演算により、s の i 番目のビットが 1 かどうかを判定する
    next unless (s >> i) & 1 == 1

    # i 番目のビットが立っている場合、配列 a の i 番目の値を score に加算する
    score += a[i]
    # 対応するアルファベット（'A' から順に）を name に追加する
    name += ('A'.ord + i).chr
  end
  ranking << [-score, name] # ['A', 400]みたいな名前、スコアのペア配列
  # 問題の仕様で「数値は降順、数値が同じ場合は文字列は昇順」なので
  # scoreの数値を反転させることでsortメソッドで降順にソートできる
end
ranking.sort.each { |r| puts r[1] }
