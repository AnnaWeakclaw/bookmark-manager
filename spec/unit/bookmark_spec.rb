require 'bookmark'

describe Bookmark do
  let(:bookmark) { Bookmark.new }
  it "returns list of bookmark instances" do
    expect(Bookmark.all).to include("https://github.com/makersacademy/course/tree/master/bookmark_manager")
  end
end