#!/usr/bin/env ruby
# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
x = (1..n).to_a - a
puts x.size
puts x.join(' ')
