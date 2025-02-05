#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_s.to_i
a = gets.split.map(&:to_i).reverse
# 右肩上がりの数列を作るが、
# ひっくり返して右肩下がりの方が簡単なので`reverse`

(0...n - 1).each do |i|
  if a[i + 1] == a[i] + 1
    # 右隣との差が1であれば右側を1下げる
    # 今の要素ではなく、次の要素に代入する
    a[i + 1] -= 1
  elsif a[i + 1] > a[i] + 1
    # 右側との差が2以上なら条件を満たせないので脱出
    puts 'No'
    exit
  end
end

puts 'Yes'
