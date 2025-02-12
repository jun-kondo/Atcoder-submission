#!/usr/bin/env ruby
# frozen_string_literal: true

a, b = gets.split.map(&:to_i)
ans = if a == b
        1
      elsif (a + b).even?
        3
      else
        2
      end
puts ans
