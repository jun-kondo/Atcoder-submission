#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i

lists = []
(0...n).each do
  c = gets.to_i
  a = gets.split.map(&:to_i)
  lists << [c, a]
end
x = gets.to_i

ans = []
min_bet = 10**18
(0...n).each do |i|
  bet_cnt, outcomes = lists[i]
  outcomes.each do |o|
    if o == x
      ans << [i + 1, bet_cnt]
      min_bet = [min_bet, bet_cnt].min
    end
  end
end
ans = ans.filter { |a| a[1] == min_bet }.sort
puts ans.size
puts ans.map(&:first).join(' ')
