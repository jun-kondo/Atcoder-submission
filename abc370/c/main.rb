#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp
t = gets.chomp
n = s.size
ans = []
while s != t
  # eachの前に初期化
  best = ''
  # このeach文一周で1つの文字が書き換えられる
  # 書き換える箇所をすべて試して辞書順で最小の文字列に更新
  (0...n).each do |i|
    next unless s[i] != t[i]

    ns = s.dup
    ns[i] = t[i]
    # ループで書き換えた文字列をbestに格納
    # bestは辞書順で一番小さい変更後の文字列が入る
    best = if best == ''
             ns
           else
             # 辞書順で前の方を取り出す
             [best, ns].min
           end
  end
  # bestでsを上書きする。
  s = best
  ans << s
end
puts ans.size
puts ans
