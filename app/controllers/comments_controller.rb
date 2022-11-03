class CommentsController < ApplicationController
     
    def edit
      @comment = Comment.find(params[:id])
    end

    def new

    end

    def create
        @comment = Comment.new(content:params[:content], user_id: rand(1..10), gossip_id: 1)
        if @comment.save
          flash[:notice] = "COMMENT SAVE"
          redirect_to gossips_path
        else 
          flash.now[:alert] = "ERROR TRY AGAIN"
          render new_comment_path
        end
    end

    def update
      @comment = Comment.find(params[:id])
      if @comment.update(post_params)
        redirect_to gossips_path
      else
        render :edit
      end
    end

    def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy
      redirect_to gossips_path
    end

    private
    
    def post_params
      post_params = params.require(:comment).permit(:content)
    end


  end