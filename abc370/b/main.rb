#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i  # 整数1つを受け取る(1行に1つ整数がある前提)#
a = Array.new(n) { gets.split.map(&:to_i) }
now = 1
n.times do |j|
  i = now - 1
  now = if i >= j
          a[i][j]
        else
          a[j][i]
        end
end
puts now
