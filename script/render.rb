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

#filename = ARGV[0]

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

if facilitator
  template = Liquid::Template.parse("{% assign user = 'facilitator' %}" + IO.read(filename))
else
  template = Liquid::Template.parse("{% assign user = 'student' %}" + IO.read(filename))
end

puts template.render
