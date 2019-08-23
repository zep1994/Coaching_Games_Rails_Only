require 'rails_helper'
 
describe 'navigate' do
  before do
    @post = Post.create(time: "9", cost: "9", coach: "tim")
  end
 
  it 'loads the show page' do
    visit "/posts/#{@post.id}"
    expect(page.status_code).to eq(200)
  end
end