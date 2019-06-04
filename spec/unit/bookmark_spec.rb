require "bookmark"

describe Bookmark do
  let(:bookmark) { Bookmark.new }
  it "returns list of bookmark instances" do
    expect(Bookmark.all).to include"http://www.google.com"
  end
end
