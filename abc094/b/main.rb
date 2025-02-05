#!/usr/bin/env ruby
# frozen_string_literal: true

N, M, X = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
result = A.count { |a| a < X }.then { |c| [c, A.size - c].min }
# リスト A 内の要素で、X より小さいものの数をカウントします。
# 次に、そのカウントと（リストのサイズからそのカウントを引いた値）の間で最小のものを選びます。これが結果となります。

puts result
