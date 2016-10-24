require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    user = User.create(first_name: 'Dave', last_name: 'Test')
    3.times do
      post = Post.create(title: 'test', body: 'body', user: user)
      3.times { post.pictures.create(title: 'Test') }
    end
  end

  it 'should not fail with multiple eager loads' do

    posts = Post.all.includes(:user, :pictures)
    post = posts.first
    expect(post.title).to eq('test')
    expect(post.user.first_name).to eq('Dave')
    expect(post.pictures.first.title).to eq('Test')
  end
end
