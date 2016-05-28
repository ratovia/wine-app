require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @user = users(:furukido)
    @post = @user.posts.build(wine: "aaaa")
  end

  test "should be valid" do
    assert @post.valid?
  end

  test "user id should be present" do
    @post.user_id = nil
    assert_not @post.valid?
  end

  test "content should be present" do
    @post.wine = "  "
    assert_not @post.valid?
  end

  test "content should be at most 140 characters" do
    @post.wine = "a" * 141
    assert_not @post.valid?
  end

  test "order should be most recent first" do
    assert_equal posts(:lemon),Post.first
  end
end
