#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)
m = gets.to_i
b = gets.split.map(&:to_i)
l = gets.to_i
c = gets.split.map(&:to_i)

list = Set.new
(0...n).each do |j|
  (0...m).each do |k|
    (0...l).each do |l|
      sum = a[j] + b[k] + c[l]
      list.add(sum)
    end
  end
end

q = gets.to_i
x = gets.split.map(&:to_i)

x.each do |xi|
  if list.include?(xi)
    puts 'Yes'
  else
    puts 'No'
  end
end
