require "rubygems"
require "libxslt"
require "libxml"
require "xml"
require "xslt"

class HtmlCleaner
  def initialize
    doc = ::XML::Document.file(File.dirname(__FILE__) + "/indent.xslt")
    @stylesheet = XSLT::Stylesheet.new(doc)
  end
  
  def clean(obj)
    doc = case obj
    when IO: XML::HTMLParser.string(obj.read).parse
    when XML::Document: obj
    else
      XML::HTMLParser.string(obj.to_s).parse
    end
    string = @stylesheet.apply(doc).to_s(true)
  end
end