#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
p = gets.split.map(&:to_i)
q = gets.split.map(&:to_i)
h = []
(0...n).to_a.each { |i| h << [[q[i] - 1], q[p[i] - 1]] }
puts h.sort.map(&:last).join(' ')
