#!/usr/bin/env ruby
# frozen_string_literal: true

n, h, x = gets.split.map(&:to_i)
P = gets.split.map(&:to_i)

(0...n).each do |i|
  if h + P[i] >= x
    puts i.succ
    exit
  end
end
