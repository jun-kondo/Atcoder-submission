#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)
b = (0...n - 1).map { |i| a[i] * a[i + 1] }
puts b.join(' ')
