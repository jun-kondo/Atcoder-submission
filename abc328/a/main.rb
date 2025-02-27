#!/usr/bin/env ruby
# frozen_string_literal: true

n, x = gets.split.map(&:to_i)
s = gets.split.map(&:to_i)

puts s.filter { |a| a <= x }.sum
