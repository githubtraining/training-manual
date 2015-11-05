namespace :book do
  desc 'prepare build'
  task :prebuild do
    Dir.mkdir 'images' unless Dir.exists? 'images'
    Dir.glob("book/*/images/*").each do |image|
      FileUtils.copy(image, "images/" + File.basename(image))
    end
  end

  desc 'build basic book formats'
  task :build => :prebuild do
    puts "Converting to HTML..."
    `bundle exec asciidoctor gh-for-devs-manual.asc`
    puts " -- HTML output at gh-for-devs-manual.html"

    puts "Converting to EPub..."
    `bundle exec asciidoctor-epub3 gh-for-devs-manual.asc`
    puts " -- Epub output at gh-for-devs-manual.epub"

    puts "Converting to Mobi (kf8)..."
    `bundle exec asciidoctor-epub3 -a ebook-format=kf8 gh-for-devs-manual.asc`
    puts " -- Mobi output at gh-for-devs-manual.mobi"

    puts "Converting to PDF... (this one takes a while)"
    `bundle exec asciidoctor-pdf gh-for-devs-manual.asc 2>/dev/null`
    puts " -- PDF  output at gh-for-devs-manual.pdf"
  end
end

task :default => "book:build"
