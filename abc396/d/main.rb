#!/usr/bin/env ruby
# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
graph = Array.new(n) { [] }

m.times do
  a, b, w = gets.split.map(&:to_i)
  a -= 1
  b -= 1
  graph[a] << [b, w]
  graph[b] << [a, w]
end

ans = 2e18.to_i

dfs = lambda do |v, visited, xor_val|
  visited[v] = true
  if v == n - 1
    ans = [ans, xor_val].min
    return
  end
  graph[v].each do |next_v, weight|
    next if visited[next_v]

    dfs.call(next_v, visited.dup, xor_val ^ weight)
  end
end

dfs.call(0, Array.new(n, false), 0)
puts ans
# 1~n番の頂点のある無向グラフで、スタートからゴールまでの頂点を結ぶ辺の重みの総xorの最小値を求める問題
# 総xorとは頂点の移動毎に重みをxor計算する(A^B)。スタートは0
# DFS(深さ優先探索)を再帰で実装する
# 前半のm.timesのブロックでグラフの隣接リストを実装している
# graph[a] << [b, w]
# graph[b] << [a, w]
#
# Lambda(dfs)の引数
# v -> 現在の頂点(0からスタート)
# visited -> すでに通った頂点番号の配列。初期値はArray.new(n, false)で頂点の数分のfalseの配列
# xor_val -> 現在のxor(頂点毎にxor計算をしなければならないので)

# visited[next_v] がtrueならたどるのを辞める(隣接点が訪問済み)
# trueでないなら再帰を実行
# 最後のポイント(n-1番目)に到達したら累積のxorの値の最小値を更新する
