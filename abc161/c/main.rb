#!/usr/bin/env ruby
# frozen_string_literal: true

N, K = gets.split.map(&:to_i)

# N > Kだった場合最終的にmodの値になる
mod = N % K
# N < K だった場合K - modでN - kの絶対値が求められる
puts [mod, K - mod].min
