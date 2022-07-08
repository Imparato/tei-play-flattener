require "roxml"
require_relative "loader"

path = ARGV[0]

fail "You must run main.rb with an xml path in argument." unless path

xml = File.open(path).read

book = Book.from_xml(xml)

puts "Title: " +  book.title
puts "Author: " + book.author
