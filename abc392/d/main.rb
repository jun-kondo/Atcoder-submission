#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
k = [0] * n
a = Array.new(n) { [0] * n }

n.times do |i|
  k[i], *a[i] = gets.split.map(&:to_i)
end

disez = a.min(2) { |x| x.uniq.size }
count = 0
cmb = []
disez[0].each do |i|
  disez[1].each do |j|
    count += 1 if i == j
    cmb << [i, j]
  end
end
puts ( 2 * count.to_f / cmb.size).round(15)
