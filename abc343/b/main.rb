#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
(0...n).each do
  ans = []
  a = gets.split.map(&:to_i)
  a.each_with_index do |ai, ind|
    ans << ind.succ if ai == 1
  end
  puts ans.join(' ')
end
