#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp.chars

ans = 0
target = 'i'
s.each do |c|
  if c == target
    target = target == 'o' ? 'i' : 'o'
  else
    ans += 1
  end
end
ans += 1 if target == 'o'

puts ans

# 入力値を'ioio'のようなiとoが交互にペアになる偶数の文字列をする最小の手数を答える
# 難しかった。
# ループの中ではc != targetならcの前にtargetを挿入しているイメージ
