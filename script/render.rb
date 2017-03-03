#!/usr/bin/env ruby
#
# Usage:
#    bundle exec render.rb path/to/some/manual.md

require  'liquid'
require  'optparse'

banner = <<-BANNER
Usage: render.rb [<filename>]
BANNER

facilitator = false

ARGV << '-h' if ARGV.empty?

ARGV.options do |opts|
  opts.banner = banner
  opts.on("-f", "--facilitator") { |val| facilitator = true }
  opts.on("-s", "--student")    { |val| facilitator = false }
  opts.on_tail("-h", "--help")               { abort opts.to_s }
  opts.parse!
end

if ARGV.any?
  filename = ARGV.first
end

basedir = File.expand_path(File.dirname(filename))

Liquid::Template.file_system = \
    Liquid::LocalFileSystem.new(basedir, pattern="%s.md".freeze)

template = Liquid::Template.parse(IO.read(filename))

puts template.render( 'context' => { 'facilitator' => facilitator } )
