#!/usr/bin/env ruby
# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sort
B = gets.split.map(&:to_i).sort

list = []
A.each { |a| list << [a, 'A'] }
B.each { |b| list << [b + 1, 'B'] }
list.sort!

seller = 0
buyer = m
(0...(n + m)).each do |i|
  price, type = list[i]
  if type == 'A'
    seller += 1
  else
    buyer -= 1
  end
  if seller >= buyer
    puts price
    exit
  end
end

# 売り手>買い手の人数になる最小の価格を判定する問題
# Aは売り手の金額リストで金額以上で売る
# Bは買い手の金額リストで金額以下であれば買う
# 解法はAとBを併せた金額リストを作り、売値か買値か判別できるようにしておく
# 売値は'A'、買値は'B'とした。売り手と買い手が増減する価格のリストであるため
# Bの値を+1している。(B+1になればBの価格の買い手はいなくなる)
