require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @author = Author.new(id: 1, name: "Brenda Segal", email: "bsegal26@gmail.com", bio: "all about me", image: "blah.jpg", password: "hmmmm2342", password_confirmation: "hmmmm2342")
    @post = Post.new(url: "test-url", content: "example cotnent goes here", enabled: true, author_id: @author.id)
  end
  
  test "should be valid" do
    assert @post.valid?
  end
  
  test "author id should be present" do
    @post.author_id = nil
    assert_not @post.valid?
  end
  
  test "content should be present" do
    @post.content = ""
    assert_not @post.valid?
  end
  
end
