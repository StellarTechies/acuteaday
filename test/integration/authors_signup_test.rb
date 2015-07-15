require 'test_helper'

class AuthorsSignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  test "invalid author signup info" do
    get signup_path
    assert_no_difference 'Author.count' do
      post authors_path, author: { name: "", email: "user@invalid", password: "foo", password_confirmation: "foo_bar" }
    end
    
    assert_template 'authors/new'
  end
end