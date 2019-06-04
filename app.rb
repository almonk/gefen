#!/usr/bin/env ruby
require 'mini_racer'

FNS_DIRECTORY = "./example-functions/"

def load_function(filename)
  file = File.open("#{filename}", "rb")
  contents = file.read
  puts "--> Evaluating #{filename}"
  
  console = ""
  context = MiniRacer::Context.new
  context.attach('console.log', -> (arg) { console += arg })
  p context.eval(contents, filename:"#{filename}")
  p context.heap_stats
end

Dir["#{FNS_DIRECTORY}*.js"].each do |file|
  load_function(file)
end