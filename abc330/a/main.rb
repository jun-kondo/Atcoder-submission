#!/usr/bin/env ruby
# frozen_string_literal: true

n, l = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
ans = 0

(0...n).each { |i| ans += 1 if a[i] >= l }
puts ans
