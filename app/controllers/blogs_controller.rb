class BlogsController < ApplicationController

  before_action :authenticate_user!,only: [ :edit, :update, :destroy]

  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = current_user.blogs.new(blog_params)
    if @blog.save
      flash[:success] = "ブログを投稿が完了しました"
      redirect_to @blog
    else
      # redirect_to new_blog_path エラーが残らない！
      render 'blogs/new' #エラー更新後、URLが「…/blogs」に変更されてしまう！
    end
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update_attributes(blog_params)
      flash[:success] = "ブログ編集が完了しました"
      redirect_to @blod
    else
      render 'edit'
    end
  end

  def destroy
    Blog.find(params[:id]).destroy
    flash[:success] = "ブログを削除しました"
    redirect_to blogs_url
  end

  private

    def blog_params
      params.require(:blog).permit(:title, :context, :user_id, :avatar)
    end

end
