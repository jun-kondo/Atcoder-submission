#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp
s.match?(/^<=+>$/) ? puts('Yes') : puts('No')
