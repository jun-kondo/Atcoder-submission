#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)
ans = []
(0...n).each { |i| ans << [i + 1, a[i]] }
ans = ans.sort { |x, y| y[1] <=> x[1] } # 降順ソート
puts ans[1][0] # 二個目の要素の配列の1個目の要素を出力
