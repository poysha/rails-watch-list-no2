require 'rails_helper'

RSpec.describe Movie, type: :model do
  it 'is valid with valid attributes' do
    movie = Movie.new(title: 'Wonder Woman 1984', overview: 'Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s!', poster_url: 'https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg', rating: 6.9)
    expect(movie).to be_valid
  end

  it 'is not valid without a title' do
    movie = Movie.new(overview: 'Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s!', poster_url: 'https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg', rating: 6.9)
    expect(movie).not_to be_valid
  end
end
