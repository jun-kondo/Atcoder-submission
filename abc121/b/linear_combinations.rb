# frozen_string_literal: true

# 入力を読み込む。nは行列Aの行数、mは列数、cは定数。
n, m, c = gets.split.map(&:to_i)

# 配列Bを読み込む。Bはサイズmの配列。
b = gets.split.map(&:to_i)

# 行列Aの各行を読み込む（n行m列の二次元配列）。
As = Array.new(n) { gets.split.map(&:to_i) }

# 結果を計算する。
# 各行aに対して、aとbの要素ごとの積を計算し、その合計にcを足した結果が0を超える場合をカウントする。
result = As.count do |a|
  # aとbを要素ごとにペアにして、対応する要素の積を計算し、合計を求める
  # 最終的にcを加えて0より大きいか判定
  a.zip(b).sum { |ai, bi| ai * bi } + c > 0
end

# カウント結果を出力する。
puts result
