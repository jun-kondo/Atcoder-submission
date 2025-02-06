#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_s.to_i # 整数1つを受け取る(1行に1つ整数がある前提)#
D, X = gets.split.map(&:to_i) # Xは残り
A = Array.new(n) { gets.to_i } # Aの要素はa日毎と考える(2 => 2日毎)
# 1日目は必ず食べるので1個 + (日数 - 1) / 間隔
# eg: 2 => 初日に食べて、残りの日数は2日毎
result = A.map { |i| 1 + (D - 1) / i }.sum
puts result + X
