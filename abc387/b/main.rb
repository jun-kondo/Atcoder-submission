#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_s.to_i  # 整数1つを受け取る(1行に1つ整数がある前提)#

grid = []
(1..9).each do |i|
  (1..9).each do |j|
    grid << i * j
  end
end

puts grid.reject { _1 == n }.sum
