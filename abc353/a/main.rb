#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
h = gets.split.map(&:to_i)

(0...n).each do |i|
  if h[i] > h[0]
    puts i.succ
    exit
  end
end
puts '-1'
