#!/usr/bin/env ruby
$LOAD_PATH << "."
require 'rubygems'
require 'bundler'
Bundler.require
require 'treetop'
Treetop.require 'rule'

parser = RulesParser.new
parser.consume_all_input = true
#file = File.read("rules/emerging-attack_response.rules")
file = File.read("rules/test.rules")
puts "Parsing '#{file}'"
parsed_data = parser.parse(file)
if(parsed_data.nil?)
  puts "OH SHIT YOUR SHIT'S BROKEN."
  puts parser.failure_reason
  puts "Failure line: " + parser.failure_line.to_s
  puts "Failure column: " + parser.failure_column.to_s
else
  puts parsed_data.process.inspect
end



