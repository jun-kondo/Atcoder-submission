#!/usr/bin/env ruby
# frozen_string_literal: true

sx, sy = gets.split.map(&:to_i)
tx, ty = gets.split.map(&:to_i)

sx -= 1 if (sx + sy).odd?
tx -= 1 if (tx + ty).odd?
x = (tx - sx).abs
y = (ty - sy).abs

ans = x < y ? y : (x + y) / 2
puts ans
