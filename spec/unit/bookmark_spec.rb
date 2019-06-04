require "bookmark"

describe Bookmark do
  let(:bookmark) { Bookmark.new }
  it "returns list of bookmark instances" do

    expect(bookmark.all).to include({:title => "Makers", :url => "http://www.makersacademy.com"})
  end
  it "add a new bookmark" do
    bookmark.add("http://www.ruby.org", "Ruby")
    expect(bookmark.all.last[:url]).to eq "http://www.ruby.org"
    expect(bookmark.all.last[:title]).to eq "Ruby"
  end
end
