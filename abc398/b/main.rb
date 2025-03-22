#!/usr/bin/env ruby
# frozen_string_literal: true

A = gets.split.map(&:to_i).sort

three = false
two = false
A.tally.each do |k, v|
  next unless v >= 3

  three = true
  A.tally.each do |k2, v2|
    next if k == k2

    if v2 >= 2
      two = true
      break
    end
  end
end
puts three && two ? 'Yes' : 'No'
