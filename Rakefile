
begin
  require 'bones'
rescue LoadError
  abort '### Please install the "bones" gem ###'
end

task :default => 'test:run'
task 'gem:release' => 'test:run'

Bones {
  name     'ids_rules_parser'
  authors  'Xavier Lange, Kris Barrett'
  email    'xrlange@gmail.com'
  url      'http://example.com/'
}

