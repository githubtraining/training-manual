#!/usr/bin/env ruby
#
# Usage:
#    bundle exec render.rb path/to/some/manual.md

require  'liquid'

filename = ARGV[0]
basedir = File.expand_path(File.dirname(filename))

Liquid::Template.file_system = \
    Liquid::LocalFileSystem.new(basedir, pattern="%s.md".freeze)

template = Liquid::Template.parse(IO.read(filename))

puts template.render
