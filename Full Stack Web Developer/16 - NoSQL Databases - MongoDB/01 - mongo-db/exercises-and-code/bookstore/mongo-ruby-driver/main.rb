require 'mongo'

$mongo_client = Mongo::Client.new(['127.0.0.1:27017'], database: 'book_store')

def print_commands
  print '(l)ist books, (i)nsert one, (d)delete, (u)pdate, (q)uit: '
end

def print_book_list
  $mongo_client[:books].find.each do |book|
    puts book.inspect
  end
end

def insert_one
  print 'Give the title: '
  title = gets.chomp
  if title.empty?
    puts 'Title cannot be empty'
    return
  end

  print 'Give the author: '
  author = gets.chomp
  if author.empty?
    puts 'Author cannot be empty'
    return
  end

  print 'Give the tags in comma separated list: '
  tags = gets.chomp.split(',').map(&:strip)

  book = {title: title, author: author, tags: tags}
  result = $mongo_client[:books].insert_one(book)
  puts "Insertion result: #{result.inspect}"
end

def delete_one
  print 'Give me the title of book to delete: '
  title = gets.chomp
  book = $mongo_client[:books].find({title: title}).first
  unless book
    puts 'Book not found'
    return
  end
  result = $mongo_client[:books].delete_one({title: title})
  puts "Deletion result: #{result.inspect}"
end

def update_one
  print 'Give me the title of the book you want to update: '
  old_title = gets.chomp
  book = $mongo_client[:books].find(title: old_title).first
  unless book
    puts 'Book not found'
    return
  end

  book = {}

  print "Give the new title. Leave empty if you don't want to update: "
  title = gets.chomp
  book.merge!({title: title}) unless title.empty?

  print "Give the new author. Leave empty if you don't want to update: "
  author = gets.chomp
  book.merge!({author: author}) unless author.empty?

  print "Give the tags in comma separated list. Leave empty if you don't want to udpate: "
  tags = gets.chomp.split(',').map(&:strip)
  book.merge!({tags: tags}) unless tags.empty?

  result = $mongo_client[:books].update_one({title: old_title}, {"$set" => book})
  puts "Update result: #{result.inspect}"
end

print_commands

while (answer = gets.chomp) != 'q'
  case
    when answer == 'l'
      print_book_list
    when answer == 'i'
      insert_one
    when answer == 'd'
      delete_one
    when answer == 'u'
      update_one
    when answer == 'q'
      puts 'Bye!'
      exit
    else
      puts "Wrong Choice! Try again."
  end

  print_commands
end
