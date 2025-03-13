#!/usr/bin/env ruby
# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
graph = Array.new(n) { [] }

m.times do
  a, b, c = gets.split.map(&:to_i)
  a -= 1
  b -= 1
  graph[a] << [b, c]
  graph[b] << [a, c]
end

memo = {}

dfs = lambda do |v, visited|
  state_key = visited.map { |t| t ? '1' : '0' }.join
  key = "#{v},#{state_key}"

  return memo[key] if memo.key?(key)

  best = 0
  visited[v] = true
  graph[v].each do |next_v, weight|
    next if visited[next_v]

    best = [best, weight + dfs.call(next_v, visited)].max
  end
  visited[v] = false
  memo[key] = best
  best
end

ans = 0
(0...n).each do |i|
  visited = Array.new(n, false)
  ans = [ans, dfs.call(i, visited)].max
end

puts ans

# visitedはdupすると重くなるのでバックトラッキングを採用している
# バックトラッキングとは再帰の前後でvisitedのステータスを変えること。
# ループの前に現在地のステータスをtrueにしてループが終わり関数から抜ける前にfalseに戻している
# visited[v] = falseを使わない代わりに再帰の引数にvisited.dupを使用できる
# best = [best, weight + dfs.call(next_v, visited.dup)].max

# メモ化
# 現在の頂点(v)とvisitedの各要素(真偽値)を1or0の文字列にしたものをキーとするハッシュを作る
# state_key = visited.map { |t| t ? '1' : '0' }.join
# key = "#{v},#{state_key}"
# ループが終わり更新が終わったbestをmemo[key]に代入する
# これによりその時点での頂点と他の頂点の訪問状況が一致した場合,最大値をメモから呼び出すことができ、
# パフォーマンスが改善される。
