#!/usr/bin/env rake
require "bundler/gem_tasks"

def download(version)
  source_url = "https://raw.github.com/documentcloud/underscore/#{version}/underscore.js"

  `wget -O vendor/assets/javascripts/underscore.js #{source_url}`
end

def write_version_file(version)
  version_file_text =
  <<-eos.gsub(/^ {4}/, '')
    module Underscore
      module Source
        VERSION = "#{version}"
      end
    end
  eos

  File.open('lib/underscore-source/version.rb', 'w') do |file|
    file.puts version_file_text
  end
end

def make_version(version)
  download(version)
  write_version_file(version)
  `git ci -am "Underscore #{version}"`
  puts `rake release`
end

task :make_all_versions do
  versions = %w[
    0.1.0
    0.1.1
    0.2.0
    0.3.0
    0.3.1
    0.3.2
    0.3.3
    0.4.0
    0.4.1
    0.4.2
    0.4.3
    0.4.4
    0.4.5
    0.4.6
    0.4.7
    0.5.0
    0.5.1
    0.5.2
    0.5.3
    0.5.4
    0.5.5
    0.5.7
    0.6.0
    1.0.0
    1.0.1
    1.0.2
    1.0.3
    1.0.4
    1.1.0
    1.1.1
    1.1.2
    1.1.3
    1.1.4
    1.1.5
    1.1.6
    1.1.7
    1.2.0
    1.2.1
    1.2.2
    1.2.3
    1.2.4
    1.3.0
    1.3.1
    1.3.2
    1.3.3
  ]

  versions.each do |version|
    make_version(version)
  end
end

task :make_version do
  make_version("0.1.0")
end
