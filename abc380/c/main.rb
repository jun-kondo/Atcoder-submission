#!/usr/bin/env ruby
# frozen_string_literal: true

n, k = gets.split.map(&:to_i)
s = gets.chomp # 010011100011001
# 0 *n, 1*nの塊に分けて考える。=>  0*1, 1*1, 0*2, 1*3, 0*3, 1*2, 0*2, 1*1
# run length encoding
rle = []
s.each_char do |c|
  if rle.size > 0 && rle[-1][:char] == c
    rle[-1][:length] += 1
  else
    rle << { char: c, length: 1 } # 文字、長さのペアを作る
  end
end

one = 0
rle.each_with_index do |e, i|
  next unless e[:char] == '1'

  one += 1 # charが'1'の要素をカウント
  rle[i - 1], rle[i] = rle[i], rle[i - 1] if one == k # すわっぷ
end
# 復元
ans = rle.map { |e| e[:char] * e[:length] }.join
puts ans
