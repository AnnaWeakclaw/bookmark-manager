require "bookmark"

describe Bookmark do
  let(:bookmark) { Bookmark.new }
  it "returns list of bookmark instances" do

    expect(bookmark.all).to include"http://www.google.com"
  end
  it "add a new bookmark" do
    bookmark.add("http://www.ruby.org")
    expect(bookmark.all).to include"http://www.ruby.org"
  end
end
