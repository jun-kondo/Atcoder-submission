#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp

res = ''
s.reverse.each_char do |c|
  break if c == '.'

  res += c
end
puts res.reverse
