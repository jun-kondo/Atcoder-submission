#!/usr/bin/env ruby
# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
s = gets.chomp
t = gets.chomp

prefix = t[0, n]
suffix = t[-n, n]

ans = if s == prefix && s == suffix
        0
      elsif s == prefix
        1
      elsif s == suffix
        2
      else
        3
      end
puts ans
