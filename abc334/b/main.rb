#!/usr/bin/env ruby
# frozen_string_literal: true

# https://atcoder.jp/contests/abc334/tasks/abc334_b
def f(r, m)
  r / m
end

a, m, l, r = gets.split.map(&:to_i)
l -= a
r -= a

# 正の値までずらす, 10^18はlrの上限値
X = 10**18 / m + 1
l += X * m
r += X * m

# lrは両端を含むのでl-1している
ans = f(r, m) - f(l - 1, m)
puts ans
