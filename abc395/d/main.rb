#!/usr/bin/env ruby
# frozen_string_literal: true

n, q = gets.split.map(&:to_i)
# 鳩No: 巣Noが初期値のハッシュ。各巣に1羽ずつが初期位置
hole = (1..n).each_with_object({}) { |i, h| h[i] = i }
# 巣No: 1が初期値のハッシュ
cnt =  (1..n).each_with_object({}) { |i, h| h[i] = [hole[i]] }
pigion = (0...n).to_a
hole = (0...n).to_a

(0...q).each do
  num, a, b = gets.split.map(&:to_i)
  case num
  when 1
    pigion[a] = hole[b]

  when 2
    hole[a] = b

  else
    puts pigion[a]
  end
end
