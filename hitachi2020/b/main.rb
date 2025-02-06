#!/usr/bin/env ruby
# frozen_string_literal: true

a, b, m = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
M = Array.new(m) { gets.split.map(&:to_i) }

no_coupon_min = A.min + B.min
coupon_total = M.map { |coupon| [A[coupon[0] - 1], B[coupon[1] - 1], -coupon[2]].sum }.min
puts [no_coupon_min, coupon_total].min
