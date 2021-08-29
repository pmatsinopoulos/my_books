# File: folder_list.rb
#
require 'logger'

class FolderList
  ALLOWED_ACTIONS = ['c', 'm', 'd', 'b']

  def initialize(folder)
    @folder = folder
    @array = []
    @logger = Logger.new('file-manager.log')
    @logger.level = Logger::INFO
  end

  def list_contents
    @array = build_contents
    @array.each_with_index do |entry, index|
      puts "#{(index + 1).to_s.rjust(3)} (#{file_or_dir(entry)}): #{entry}"
    end
  end

  def act(entry_index, action)
    if wrong_index?(entry_index)
      puts 'Wrong Index'
      return
    end

    action = action.downcase
    if ALLOWED_ACTIONS.include?(action)
      if action == 'b'
        puts '...going back'
      elsif action == 'd'
        delete_entry(entry_index)
      elsif action == 'm'
        move_entry(entry_index)
      elsif action == 'c'
        copy_entry(entry_index)
      end
      rebuild_list
    else
      puts 'Wrong action'
    end
  end

  def correct_index?(index)
    !wrong_index?(index)
  end

  private

  def size
    @array.size
  end

  def wrong_index?(index)
    index < 1 || index > @array.size
  end

  def rebuild_list
    @array = build_contents
  end

  def move_entry(entry_index)
    move_or_copy_entry(entry_index, 'mv')
  end

  def copy_entry(entry_index)
    move_or_copy_entry(entry_index, 'cp')
  end

  def action_name(action)
    action == 'cp' ? 'Copy' : action == 'mv' ? 'Move' : 'Delete'
  end

  def move_or_copy_entry(entry_index, action)
    print "#{action_name(action)} entry #{@array[entry_index - 1]} to ? (give index of destination entry) : "
    destination_entry_index = accept_user_input.to_i
    if wrong_index?(destination_entry_index)
      puts 'Wrong index'
    elsif File.directory?(@array[destination_entry_index - 1])
      FileUtils.send(action, @array[entry_index - 1], @array[destination_entry_index - 1])
      @logger.info "Action: #{action} on file #{@array[entry_index - 1]}. Destination: #{@array[destination_entry_index - 1]}"
    else
      puts 'This is not an existing directory'
    end
  end

  def delete_entry(entry_index)
    FileUtils.rm_rf(@array[entry_index - 1])
    @logger.info "Just deleted entry #{@array[entry_index - 1]}"
  end

  def build_contents
    Dir.glob("#{@folder}/**/*")
  end

  def file_or_dir(filename)
    File.file?(filename) ? 'F' : (File.directory?(filename) ? 'D' : 'U')
  end
end
