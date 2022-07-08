class FileDesc
  include ROXML

  xml_reader :title_stmt, from: "titleStmt", as: TitleStmt
end
