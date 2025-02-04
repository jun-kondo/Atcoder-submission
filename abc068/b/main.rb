#!/usr/bin/env ruby
# frozen_string_literal: true

# 標準入力を取得
n = gets.to_i

# 最も大きい2の累乗を直接計算
power_of_two = 2**Math.log2(n).to_i

# 答えを出力
puts power_of_two
