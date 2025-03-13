#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)

ans = 0
(0...n).each do |i|
  i += 1
  s = nil
  g = nil
  a.each_with_index do |ai, idx|
    if ai == i && s.nil?
      s = idx
    elsif ai == i
      g = idx
      ans += 1 if a[s..g].size == 3
      break
    end
  end
end
puts ans
