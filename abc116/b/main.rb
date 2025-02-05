#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_s.to_i  # 整数1つを受け取る(1行に1つ整数がある前提)#
seen = Set.new
state = n
count = 1

while seen.add?(state)
  count += 1
  state = if state.even?
            state / 2
          else
            3 * state + 1
          end
end
puts count
