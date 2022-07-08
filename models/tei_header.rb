class TEIHeader
  include ROXML

  xml_reader :file_desc, from: "fileDesc", as: FileDesc
end
