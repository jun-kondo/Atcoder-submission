#!/usr/bin/env ruby
# frozen_string_literal: true

k, g, m = gets.split.map(&:to_i)

glass = 0
mug = 0
(0...k).each do
  if glass == g
    glass = 0
  elsif mug == 0
    mug = m
  else
    p = [g - glass, mug].min # ここの実装がわからなかった
    glass += p
    mug -= p
  end
end

puts "#{glass} #{mug}"

# グラスとマグカップ間で水を移し替える問題
