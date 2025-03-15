#!/usr/bin/env ruby
# frozen_string_literal: true

n, m = gets.split.map(&:to_i)

list = Set.new
(1..n).each do |i|
  list << i
end

(0...m).each do
  a, b = gets.split.map(&:to_i)
  list.delete(b)
end

if list.size >= 2
  puts '-1'
else
  puts list.first
end

# n人の中で誰が最強か判定する問題
# 入力値でa > bの2者の強弱関係がわかる
# 解き方としては1~nのSetを作成して、Setからbを消していったあと、
# Setの中が1つのこっていればそれが最強である
# 2つ以上の場合は判定不能なので-1を出力
# n個の頂点を持つ有向グラフと考えて、DFSで解くこともできるがこれがシンプルな解き方とのことだ。
