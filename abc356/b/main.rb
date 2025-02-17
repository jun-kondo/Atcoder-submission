#!/usr/bin/env ruby
# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
x = Array.new(n) { gets.split.map(&:to_i) }.transpose

ans = a.each_with_index.count do |ai, i|
  x[i].sum >= ai
end
ans == m ? puts('Yes') : puts('No')
