require 'rexml/document'
require 'open-uri'
include REXML

uri = URI.parse("http://www.qburst.com/sitemap.xml")
xmldoc  = Document.new (uri.open)
root = xmldoc.root
print root,"\n"

