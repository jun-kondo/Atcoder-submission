#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp

a = %w[ACE BDF CEG DFA EGB FAC GBD]

a.each do |e|
  if s == e
    puts 'Yes'
    exit
  end
end
puts 'No'
