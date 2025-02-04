#!/usr/bin/env ruby
# frozen_string_literal: true

# クッキーの交換処理を行う関数
# @param cookies [Array<Integer>] 各人が持っているクッキーの数の配列
# @param total [Integer] クッキーの合計数
# @return [Array<Integer>] 交換後の各人が持っているクッキーの数の配列
def exchange(cookies, total)
  # 各人について、(全体の合計 - 自分の持っている数) / 2 を計算
  cookies.map { |cookie| (total - cookie) / 2 }
end

# 入力を受け取り、整数の配列に変換
cookies = gets.split.map(&:to_i)
# クッキーの合計数を計算
total = cookies.sum
# 過去に出現した状態を記録するためのSet
seen = Set.new
# 交換回数のカウンター
count = 0

# すべての要素が偶数である間、処理を継続
while cookies.all?(&:even?)
  count += 1
  # 現在の配列の状態をハッシュ値として取得
  state = cookies.hash

  # 同じ状態が過去に出現した場合は無限ループと判断
  if seen.include?(state)
    puts '-1'
    exit
  end
  # 現在の状態を記録
  seen.add(state)
  # クッキーの交換を実行
  cookies = exchange(cookies, total)
end

# 交換回数を出力
puts count