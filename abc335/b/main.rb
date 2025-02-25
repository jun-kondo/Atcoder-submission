#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
ans = []
(0..n).each do |x|
  (0..n).each do |y|
    (0..n).each do |z|
      ans << [x, y, z]
    end
  end
end
ans.filter { |a| a.sum <= n }.sort.each { |a| puts a.join(' ') }
