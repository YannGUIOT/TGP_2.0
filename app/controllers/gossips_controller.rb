class GossipsController < ApplicationController
    
    def index
        @gossips = Gossip.all
    end
    
    def show
      @gossip = Gossip.find(params[:id])
      # @comments = Comment.where(gossip: Gossip.where(gossip_id: params[:id]))
      @comments = @gossip.comments
    end

    def new
      
    end

    def create
      @gossip = Gossip.new(title:params[:title], content:params[:content],user_id: rand(1..10))
      if @gossip.save
        flash[:notice] = "GOSSIP SAVE"
        redirect_to gossips_path
      else 
        flash.now[:alert] = "ERROR TRY AGAIN"
        render new_gossip_path
      end
    end

    def edit
      @gossip = Gossip.find(params[:id])
    end


    def update
      @gossip = Gossip.find(params[:id])
      if @gossip.update(post_params)
        redirect_to gossips_path
      else
        render :edit
      end
    end

    def destroy
      @gossip = Gossip.find(params[:id])
      @gossip.destroy
      redirect_to gossips_path
    end

    private
    
    def post_params
      post_params = params.require(:gossip).permit(:title, :content)
    end


  end