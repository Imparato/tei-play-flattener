require_relative "spec_helper"
require "roxml"

describe "Metadata" do
  subject(:book) {
    xml = xml_for("macbeth_simple").read
    Book.from_xml(xml)
  }

  it "should have a title" do
    expect(book.tei_header.file_desc.title_stmt.title).to eq("Macbeth")
    expect(book.tei_header.file_desc.title_stmt.author).to eq("William Shakespeare")

    expect(book.title).to eq("Macbeth")
    expect(book.author).to eq("William Shakespeare")
  end
end
