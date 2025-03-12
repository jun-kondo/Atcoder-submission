#!/usr/bin/env ruby
# frozen_string_literal: true

a, b = gets.split.map(&:to_i)
ans = a**b + b**a
puts ans
