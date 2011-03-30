Suricata IDS/IPS Rules Parser
===========

A treetop grammar for turning the weird and whacky IDS/IPS rules used by Snort and Suricata into an array of hashes.

Features
--------


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

Examples
--------

    require 'rubygems'
    require 'ids_rules_parser'
    parser = IDSRulesParser.new
    parsed_data = parser.parse(some_rule_data)
    arr_of_hashes = parsed_data.process

Requirements
------------

  Treetop

Install
-------

  gem install ids_rules_parser

Author
------

Original authors: Xavier Lange, Kris Barrett

License
-------

Copyright (c) 2011 Xavier Lange and Kris Barrett

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
