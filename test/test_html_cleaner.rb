require File.dirname(__FILE__) + "/../lib/html_cleaner"
require "test/unit"
require "benchmark"

class TestHtmlCleaner < Test::Unit::TestCase
  def setup
    @cleaner = HtmlCleaner.new
    @dirty = File.read(File.dirname(__FILE__) + "/fixtures/dirty.html")
    @clean = File.read(File.dirname(__FILE__) + "/fixtures/clean.html")
  end
  
  def test_cleaning
    assert_equal @clean, @cleaner.clean(@dirty)
  end
end