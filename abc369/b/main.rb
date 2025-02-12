#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
l = nil
r = nil
res = []
n.times do
  a, s = gets.split
  a = a.to_i
  case s
  when 'L'
    res << (a - l).abs unless l.nil?
    l = a
  when 'R'
    res << (a - r).abs unless r.nil?
    r = a
  end
end
puts res.sum
