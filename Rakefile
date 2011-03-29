require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('ids_rules_parser', '0.2.0') do |p|
	p.description = "A PEG/Treetop Compatible Grammar for IDS/IPS Rules"
	p.url         = "https://github.com/krisbarrett/suricata_rules_parser"
	p.author      = "Kris Barrett"
	p.email       = "krisbarrett@gmail.com"
	p.ignore_pattern = ["tmp/*", "script/*"]
	p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each {|ext| load ext}
