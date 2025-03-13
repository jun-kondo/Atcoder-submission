#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i).sort

na = a[0] + 1
(1...n).each do |i|
  unless a[i] == na
    puts na
    exit
  end
  na = a[i] + 1
end
