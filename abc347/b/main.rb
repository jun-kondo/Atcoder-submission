#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp.chars
l = s.size

ans = []
(0...l).each do |i|
  (i...l).each do |j|
    ans << s[i..j]
  end
end
puts ans.uniq.size
