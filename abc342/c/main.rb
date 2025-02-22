#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
s = gets.chomp
q = gets.to_i
t = ('a'..'z').to_a
(0...q).each do
  c, d = gets.split
  (0...t.size).each do |i|
    t[i] = d if t[i] == c
  end
end

# sの更新
(0...n).each do |i|
  j = s[i].ord - 'a'.ord # 0~25を計算 0: 'a' 25: 'z'
  s[i] = t[j] # sのi番目がaならtの0番目の要素を代入する。何も変化がなければaが入り、そうでなければ変更後の文字になる
end

puts s
