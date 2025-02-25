#!/usr/bin/env ruby
# frozen_string_literal: true

# https://atcoder.jp/contests/abc340/tasks/abc340_c
def f(n, memo = {})
  return memo[n] if memo.key?(n)

  result = if n == 1
             0
           else
             f(n / 2, memo) + f((n + 1) / 2, memo) + n
           end
  memo[n] = result
  result
end

n = gets.to_i
puts f(n)
