Your student needs to implement the project according to the instructions in the task description.
This is an indicative implementation, that is composed of two files:
``` ruby
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
```

and

``` ruby
# File: file-manager.rb
#
# * This program displays the contents of the folder that is given as argument.
# * The contents are displayed recursively. Both directories and files are displayed.
# * Next to each entry we have a number that uniquely identifies the entry and whether the
# entry refers to a file or a directory.
# * Then program allows the user to ask for a command.
#     1. can give `q` to exit the program
#     2. can give the number of any of the entries and then a command either
#         * copy with `c` or
#         * move with `m` or
#         * delete with `d` or
#         * go back with `b`
#     3. if the command is copy, then program should ask the user to give the destination folder using the index of the folder.
#     When the user gives the destination folder, then program does the copy.
#     4. if the command is move, then program should ask the user to give the destination folder using the index of the folder.
#     When the user gives the destination folder, then program does the move.
#     5. if the command is delete, then program deletes the entry. If the entry is a folder with contents it deletes the whole folder and its contents.
# * User can give the command list `l`. In that case, program prints the contents of the current folder.
# * Program uses a Logger to keep track of all changes that it does to the directory structure after the commands of the user.
# The log file is called 'file-manager.log'
#
#
require 'fileutils'
$LOAD_PATH << '.'
require 'folder_list'

def show_options
  print 'q or <entry number> or l : '
end

def check_arguments
  if ARGV.size != 1
    $stderr.puts 'You have to give the folder you want to manage!'
    exit 1
  end
end

def accept_user_input
  gets.chomp
end

def process_user_input(user_input, folder_list)
  user_input = user_input.downcase
  if user_input == 'q'
    puts 'Bye!'
    exit 0
  elsif user_input == 'l'
    folder_list.list_contents
  elsif folder_list.correct_index?(user_input.to_i)
    present_actions_on_items
    action = accept_user_input
    folder_list.act(user_input.to_i, action)
  end
end

def present_actions_on_items
  print 'c for copy, or m for move, or d for delete, or b to go back : '
end

check_arguments

folder = ARGV[0]
ARGV.clear

folder_list = FolderList.new(folder)

while true
  show_options
  user_input = accept_user_input
  process_user_input(user_input, folder_list)
end
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.
