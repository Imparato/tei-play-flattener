class Book
  include ROXML

  xml_reader :tei_header, from: "teiHeader", as: TEIHeader

  delegate :title, :author, to: :"tei_header.file_desc.title_stmt"
end
