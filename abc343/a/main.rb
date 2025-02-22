#!/usr/bin/env ruby
# frozen_string_literal: true

a, b = gets.split.map(&:to_i)
ab = a + b
arr = (0..10).to_a
arr.delete(ab)
puts arr.sample
