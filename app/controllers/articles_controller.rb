class ArticlesController < ApplicationController
    before_action :find_article, only: [:edit, :show, :update, :destroy]
    
    def index
        @article = Article.all.order("created_at desc").paginate(page: params[:page], per_page: 7)
    end
    
    def new
        @article = Article.new 
    end
    
    def create
        @article = Article.new article_params
        
        if @article.save
            redirect_to @article, notice: "Article successfully saved"
        else
            render 'new'
        end
    end
    
    def show
        
    end
    
    def edit
    end
    
    def update
        if @article.update(params[:article].permit(:title, :description))
            redirect_to @article, notice: "Update success"
        else
            render 'edit'
        end
    end
    
    def destroy
        @article = Articl.find(params[:id])
        @article.destroy
        
        redirect_to posts_path
    end
    
    private
    
    def find_article
        @article = Article.friendly.find(params[:id])
    end
    
    def article_params
        params.require(:article).permit(:title, :description, :link, :pic, :slug)
    end
end
