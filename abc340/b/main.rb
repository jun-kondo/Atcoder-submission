#!/usr/bin/env ruby
# frozen_string_literal: true

q = gets.to_i
arr = []
(0...q).each do
  query, i = gets.split(' ').map(&:to_i)
  case query
  when 1 then arr << i
  when 2 then puts arr[-i]
  end
end
