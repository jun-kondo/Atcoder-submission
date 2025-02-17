#!/usr/bin/env ruby
# frozen_string_literal: true

n, l, r = gets.split.map(&:to_i)
n = (1..n).to_a
n = n[0...l - 1] + n[l - 1..r - 1].sort!.reverse! + n[r..-1]
puts n.join(' ')
