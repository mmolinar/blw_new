class PostsController < ApplicationController
   before_action :find_post, only: [:show, :edit, :update, :destroy]
   
    def index
        @post = Post.all.order('created_at DESC')
    end
    
    def new
        @post = Post.new
    end
    
    def create
        @post = Post.new (post_params)
        
        if @post.save
            redirect_to @post, notice: "You rock"
        else 
            render'new', notice: "Try again"
        end
    end
    
    def show
    end
    
    def edit
    end
    
    def update
        
        if @post.update(params[:post].permit(:title, :body))
            redirect_to @post, notice: "Update success"
        else
            render 'edit'
        end
    end
    
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        
        redirect_to posts_path
    end
    
    private
        def post_params
            params.require(:post).permit(:title, :body, :pic)
        end
        
        def find_post
            @post = Post.find(params[:id])
        end
end
