#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i).sort

s = a.sum
x = s / n
r = s % n

b = [x] * n
(0...r).each { |i| b[i] += 1 }
b.sort!

ans = 0
(0...n).each { |i| ans += (a[i] - b[i]).abs }

puts ans / 2

# 数列Aのmax, minの差が1以下になるまでの走査数を求める問題
# 走査はAiを-1, Ajを+1すること
# つまり数列Aの合計は不変である
# 数列の合計と要素の商(x)と余り(r)から走査後の数列bを求めることができる
# xが変更後の値であり、rの数の要素に対して+1をする(数列Bの合計はAと同じ)
# AとBの各要素の差の絶対値の合計を2で割ったものが答えになる
# 絶対値でない差分の合計は0になる(増分の合計と減分の合計は等しいから)
