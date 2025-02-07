#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.to_s.chomp.chars
res = 0
z = 0
s.each do |c|
  if c == '0'
    z += 1
  else
    # '00','0'をカウントできる
    res += (z + 1) / 2
    z = 0
    # 0以外の数字をカウント
    res += 1
  end
end
# '32000'のようなゼロの連続で終わった場合、
# 上のループではカウント出来ないので最後に加算する
res += (z + 1) / 2
puts res
