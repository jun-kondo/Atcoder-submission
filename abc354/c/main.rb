#!/usr/bin/env ruby
# frozen_string_literal: true

Card = Struct.new(:attack, :cost, :index)
n = gets.to_i
cards = []

n.times do |i|
  a, c = gets.split.map(&:to_i)
  cards << Card.new(a, c, i + 1)
end

cards.sort_by! { |card| -card.attack }
ans = []
cards.each do |card|
  ans << card if ans.empty? || ans.last.cost > card.cost
end
puts ans.size
puts ans.map(&:index).sort.join(' ')
