require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @author = Author.new(name: "Brenda Segal", email: "bsegal26@gmail.com", bio: "all about me", image: "blah.jpg", password: "hmmmm2342", password_confirmation: "hmmmm2342")
    @author_invalid = Author.new(name: "Brenda Segal", email: "bsegal26@gmail.com", bio: "all about me", image: "blah.jpg", password: "hmmm", password_confirmation: "hmmm")
  end
  
  test "should be valid" do
    assert @author.valid?
  end
  
  test "should save author" do
    assert @author.save
  end
  
  test "should not be valid" do
    assert_not @author_invalid.valid?
  end
  
  test "should not save author" do
    assert_not @author_invalid.save
  end
end
