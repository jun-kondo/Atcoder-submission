#!/usr/bin/env ruby
# frozen_string_literal: true

S = gets.to_s.chomp
ans = S.scan(/[ACGT]*/).map(&:length).max
puts ans
