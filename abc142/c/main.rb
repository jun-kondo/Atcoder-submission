#!/usr/bin/env ruby
# frozen_string_literal: true

N = gets.to_s.to_i # 整数1つを受け取る(1行に1つ整数がある前提)#
A = gets.split.map(&:to_i)
# 配列のインデックスと要素を交換する
# 配列の要素を比較して(1..N)を並び替えている
result = (1..N).sort_by { |i| A[i - 1] }
puts result.join(' ')
