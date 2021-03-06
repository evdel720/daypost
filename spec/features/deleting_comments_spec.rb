require 'spec_helper'

RSpec.feature 'Users can delete comments' do
  let!(:user) { FactoryGirl.create(:user) }
  let!(:post) { FactoryGirl.create(:post, title: "Luxury Title", author_id: user.id, content: "New content with long content") }
  let!(:comment) { FactoryGirl.create(:comment, post_id: post.id, author_id: user.id, content: "First comment") }

  before do
    login_as(user)
    visit post_path(:en, post)
  end

  scenario "successfully" do
    click_link "comment_delete"
    expect(page).to have_content('Comment has been deleted.')
  end
end
