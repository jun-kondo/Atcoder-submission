#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
s = gets.chomp
if "#{'1' * (n / 2)}/#{'2' * (n / 2)}" == s
  puts 'Yes'
else
  puts 'No'
end
