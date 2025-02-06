#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_s.to_i # 整数1つを受け取る(1行に1つ整数がある前提)#
P = gets.split.map(&:to_i)
Q = gets.split.map(&:to_i)

# (1..n)の順列のすべてのパターンを作り辞書順に並べる
permutations = (1..n).to_a.permutation.to_a
# PとQの順列のパターンに一致する順列の番号を調べる
a = permutations.index(P)
b = permutations.index(Q)
# |Pの番号 - Qの番号|を出力
puts (a - b).abs
