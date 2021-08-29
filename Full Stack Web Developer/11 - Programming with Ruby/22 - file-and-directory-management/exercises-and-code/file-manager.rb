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
