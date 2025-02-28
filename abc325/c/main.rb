#!/usr/bin/env ruby
# frozen_string_literal: true

require "ac-library-rb/dsu"
include AcLibraryRb

H, W = gets.split.map(&:to_i)
s = Array.new(H) { gets.chomp.chars }
n = H * W
uf = DSU.new(n)

(0...H).each do |i|
  (0...W).each do |j|
    next unless s[i][j] == '#'
    (-1..1).each do |di|
      (-1..1).each do |dj|
        ni = i + di
        nj = j + dj
        next unless ni >= 0 && ni < H && nj >= 0 && nj < W
        next unless s[ni][nj] == '#'
        uf.merge(i*W + j, ni*W + nj)
      end
    end
  end
end

ans = 0
(0...H).each do |i|
  (0...W).each do |j|
    next unless s[i][j] == '#'
    v = i*W + j
    if uf.leader(v) == v
      ans += 1
    end
  end
end
puts ans

# Union Find
# #のマスの隣接する(斜めも含む)マスが#であった場合同じグループとして統合する
# ライブラリのDSUライブラリを使った, DSU.new(n) nは要素数であり、今回はH*Wで求める
# 隣接マスが条件を満たしていればmergeメソッドでグループ統合できる
# 問題文はh*wのマス目状だが、各マスはi*W + jのように番号で管理しており、mergeやleaderの引数もそのようになっている
# leaderメソッドで引数の親の要素を返す。今回は親の要素の数をカウントしてグループの数を求めている

# 周囲のマスを探索するときは(-1..1)の二重ループをすると斜め方向も含めて探索できる
# 座標を8方向ベタ書きしていたので見習いたい書き方だった
