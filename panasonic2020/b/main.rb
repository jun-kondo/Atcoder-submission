#!/usr/bin/env ruby
# frozen_string_literal: true

H, W = gets.split.map(&:to_i)

if H == 1 || W == 1
  puts 1
else
  result = (H * W + 1) / 2

  puts result
end
