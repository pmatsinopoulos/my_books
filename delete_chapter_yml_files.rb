#!/usr/bin/env ruby

require 'fileutils'

Dir.glob('**/chapter.yml').each do |c|
  FileUtils.remove(c)
rescue
  nil
end
