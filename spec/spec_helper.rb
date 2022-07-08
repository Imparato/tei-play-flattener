require "rubygems"
require "pathname"
require "pry"

require_relative "../loader"

def xml_for(name)
  Pathname.new(File.dirname(__FILE__)).expand_path.join("support/fixtures/#{name}.xml")
end
