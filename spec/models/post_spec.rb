require 'rails_helper'
 
describe 'navigate' do
  before do
    @post = Post.create(time: "9", cost: "9", coach: "tim")
  end
 
  it 'loads the show page' do
    visit "/posts/#{@post.id}"
    expect(page.status_code).to eq(200)
  end

  it 'shows the title in an h1 tag' do 
    visit "/posts/#{@post.id}"
    expect(page).to have_css("h1")
  end
end