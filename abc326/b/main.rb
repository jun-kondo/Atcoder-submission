#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
(n..919).each do |i|
  nums = i.digits
  p = nums[-2] * nums[-1]
  if p == nums[0] && i >= n
    puts i
    exit
  end
end
