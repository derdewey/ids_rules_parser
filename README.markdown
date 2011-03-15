# Suricata IDS/IPS Rules Parser

A treetop grammar for turning the weird and whacky IDS/IPS rules and files used by Snort and Suricata into an array of hashes.

Rules are of the format
alert PROTO HOMENET HOMEPORTS -> EXTNET EXTPORTS (KEY_VALUE_PAIRS)

This grammar will parse the rules and them in to
[
  {:application => {:protocol => PROTO,
                    :src_hosts => HOMENET,
                    :src_ports => HOMEPORTS,
                    :dst_hosts => EXTNET,
                    :dst_ports => EXTPORTS}
   :signature =>   {:key1 => :value1,
                    :key2 => :value2,
                    .........}
   },
   ....
]

And then you do something cool with that.

# Usage

require 'rubygems'
require 'treetop'
Treetop.require 'rules'
parser = RulesParser.new
parser.parse(some_rule_data)

Take a look at convert.rb for a basic example

This is 3-clause BSD licensed. Copyright Xavier Lange and Kris Barrett.
