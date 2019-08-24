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

describe 'create new post' do
  it 'ensures the form works with the /new action' do
    visit  '/posts/new'
    expect(page.status_code).to eq(200)
  end 

  # it 'renders HTML in the /new template' do
  #   visit '/posts/new'
  #   expect(page).to have_content('Post Form')
  #end

  it "displays a new post form that redirects to the index page, which then contains the submitted post's time, cost and coach" do
    visit 'posts/new'
    fill_in 'post_time', with: 10
    fill_in 'post_cost' , with: 15.5
    fill_in 'post_coach', with: 'Tom'
 
    click_on 'Submit Post'
 
    expect(page.current_path).to eq('/posts')
    expect(page).to have_content(10)
    expect(page).to have_content(15.5)
    expect(page).to have_content('Tom')
  end

end 