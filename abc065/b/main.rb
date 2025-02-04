#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
buttons = Array.new(n) { gets.to_i }
current_index = 1
count = 0

while count < n
  if buttons[current_index - 1] == 2
    count += 1
    puts count
    exit
  end
  current_index = buttons[current_index - 1]
  count += 1
end

puts '-1'
