#!/usr/bin/env ruby
# frozen_string_literal: true

Point = Struct.new(:x, :y, :z)
c1 = gets.split.map(&:to_i)
c2 = gets.split.map(&:to_i)

l1 = Point.new(c1[0], c1[1], c1[2])
r1 = Point.new(c1[3], c1[4], c1[5])
l2 = Point.new(c2[0], c2[1], c2[2])
r2 = Point.new(c2[3], c2[4], c2[5])
if r1.x <= l2.x || r2.x <= l1.x || r1.y <= l2.y || r2.y <= l1.y || r1.z <= l2.z || r2.z <= l1.z
  puts('No')
else
  puts('Yes')
end
