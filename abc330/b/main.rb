#!/usr/bin/env ruby
# frozen_string_literal: true

n, l, r = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

ans = []
(0...n).each do |i|
  ans << if a[i] >= l && a[i] <= r
           a[i]
         elsif a[i] < l
           l
         else
           r
         end
end
puts ans.join(' ')

# 問題の意味がわからなくて解説AC
# XiはL≦Y≦Rを満たすすべてのYに対して
# |Xi-Ai| ≦ |Y-Ai|にならないといけないので
# その通りに実装すると上のif文の分岐になる
