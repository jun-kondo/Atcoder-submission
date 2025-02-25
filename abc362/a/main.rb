#!/usr/bin/env ruby
# frozen_string_literal: true

r, g, b = gets.split.map(&:to_i)
c = gets.chomp

pens = case c
       when 'Red' then [g, b]
       when 'Green' then [r, b]
       when 'Blue' then [r, g]
       else
         [r, g, b]
       end
puts pens.min
