require 'rails_helper'

RSpec.describe Bookmark, type: :model do
  it 'is valid with a comment, movie, and list' do
    movie = Movie.create(title: 'Wonder Woman 1984', overview: 'Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s!', poster_url: 'https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg', rating: 6.9)
    list = List.create(name: 'Favorites')
    bookmark = Bookmark.new(comment: 'Great movie!', movie: movie, list: list)
    expect(bookmark).to be_valid
  end

  it 'is not valid without a comment' do
    bookmark = Bookmark.new
    expect(bookmark).not_to be_valid
  end
end
