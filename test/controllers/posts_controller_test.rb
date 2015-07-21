require "test_helper"

class PostsControllerTest < ActionController::TestCase
  def post
    @post ||= posts :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference("Post.count") do
      post :create, post: { body: post.body, title: post.title }
    end

    assert_redirected_to post_path(assigns(:post))
  end

  def test_show
    get :show, id: post
    assert_response :success
  end

  def test_edit
    get :edit, id: post
    assert_response :success
  end

  def test_update
    put :update, id: post, post: { body: post.body, title: post.title }
    assert_redirected_to post_path(assigns(:post))
  end

  def test_destroy
    assert_difference("Post.count", -1) do
      delete :destroy, id: post
    end

    assert_redirected_to posts_path
  end
end
