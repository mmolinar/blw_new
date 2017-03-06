class BlogController < ApplicationController
    def index
        @posts = Post.all.limit(6).order("created_at desc").offset(1)
        @first_post = Post.all.limit(1).order("created_at desc").first
        @article = Article.all.limit(3).order("created_at desc")
    end
end
