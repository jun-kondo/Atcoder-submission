#!/usr/bin/env ruby
# frozen_string_literal: true

m = gets.to_i
ans = []
# 三進数に変換
ternary = m.to_s(3)
# iは3^NのNに相当。つまり次数
# cは3進数なので0, 1, 2のどれか
# 次数の数値を桁ごとの値の回数配列に追加する
ternary.reverse.each_char.with_index { |c, i| ans.concat([i] * c.to_i) }
puts ans.size
puts ans.join(' ')
