#!/usr/bin/env ruby

require 'fileutils'
require 'down'

# reg_exp_1 = /<div id="media-container-image.+\n.+<img src="(?<source>.+)"\n.+alt="(?<image_title>.+)".+title="(.+)".+\n<\/div>/
# reg_exp_2 = /<div id="media-container-image.+\n.+\n.+<img src="(?<source>.+)"\n.+alt="(?<image_title>.+)".+title="(.+)".+\n<\/div>/
reg_exp_3 = /<div>\n.+<figure>\n.+<img src="(?<source>.+)"\n.+alt=".+" title="(?<image_title>.+)"><\/img>\n.+\n.+\n.<\/div>/

pwd = FileUtils.pwd

directories = []
Dir.glob('**/*.md').each do |filename|
  # p "Processing file #{filename}"

  directory = filename.split('/')[0..-2].join('/')

  # p directory

  directories << directory
end

directories.uniq!
directories.sort!
directories.compact!
directories.reject! { |d| d.empty? }

directories.each do |directory|
  p "switching to cd: #{directory}"
  FileUtils.chdir(directory)

  p ".......||| current dir: #{FileUtils.pwd}"
  Dir.glob('**/*.md').each do |filename|
    p ".......||| Processing file #{filename}"

    FileUtils.mkdir_p('images')

    file_content = File.read(filename)

    images = []
    # file_content.scan(reg_exp_1) do |x|
    #   images << x[0] unless x.empty?
    # end
    # file_content.scan(reg_exp_2) do |x|
    #   images << x[0] unless x.empty?
    # end
    file_content.scan(reg_exp_3) do |x|
      images << x[0] unless x.empty?
    end

    p images

    new_sources = []
    images.each do |image|
      file_only = image.split('/')[-1..].join('.')
      p file_only
      https_image = image.gsub(/\Ahttp:/, 'https:')
      new_source = "./images/#{file_only}"
      new_sources << new_source
      Down.download(https_image, destination: new_source) rescue nil
    end

    # first replace the remote source with local source
    images.each_with_index do |original_image_file, index|
      file_content.gsub!(original_image_file, new_sources[index])
    end

    # replace the divs with simple images
    # file_content.gsub!(reg_exp_1, '![\k<image_title>](\k<source>)')

    # file_content.gsub!(reg_exp_2, '![\k<image_title>](\k<source>)')

    file_content.gsub!(reg_exp_3, '![\k<image_title>](\k<source>)') rescue nil
    File.write(filename, file_content)
  end

  p ".......||| switching to cd: #{pwd}"
  FileUtils.chdir(pwd)
end



