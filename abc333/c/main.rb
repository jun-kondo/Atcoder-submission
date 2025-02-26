#!/usr/bin/env ruby
# frozen_string_literal: true

# https://atcoder.jp/contests/abc333/tasks/abc333_c
# レピュニット数
n = gets.to_i

l = 12 # サンプルからnの最大値の結果は12桁だった

repunit = (0...l).map { |i| ('1' * (i + 1)).to_i } # 1, 11, 111, 1111...
s = Set.new
(0...l).each do |i|
  (0...l).each do |j|
    (0...l).each do |k|
      s.add(repunit[i] + repunit[j] + repunit[k])
    end
  end
end
puts s.to_a.sort[n - 1]
