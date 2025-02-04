#!/usr/bin/env ruby
# frozen_string_literal: true

def exchange(cookies, total)
  cookies.map { |cookie| (total - cookie) / 2 }
end

cookies = gets.split.map(&:to_i)
total = cookies.sum
seen = Set.new
count = 0

while cookies.all?(&:even?)
  count += 1
  state = cookies.hash

  if seen.include?(state)
    puts '-1'
    exit
  end
  seen.add(state)
  cookies = exchange(cookies, total)
end

puts count
