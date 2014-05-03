require_dependency "storytime/application_controller"

module Storytime
  module Dashboard
    class PostsController < DashboardController
      before_action :set_post, only: [:edit, :update, :destroy]
      layout "storytime/dashboard"

      # GET /posts
      def index
        @posts = Post.all
      end

      # GET /posts/new
      def new
        @post = Post.new
      end

      # GET /posts/1/edit
      def edit
      end

      # POST /posts
      def create
        @post = current_user.posts.new(post_params)

        if @post.save
          redirect_to @post, notice: I18n.t('flash.posts.create.success')
        else
          render :new
        end
      end

      # PATCH/PUT /posts/1
      def update
        if @post.update(post_params)
          redirect_to @post, notice: 'Post was successfully updated.'
        else
          render :edit
        end
      end

      # DELETE /posts/1
      def destroy
        @post.destroy
        redirect_to posts_url, notice: 'Post was successfully destroyed.'
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_post
          @post = Post.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def post_params
          params.require(:post).permit(:title, :content, :excerpt, :published, :post_type)
        end
    end
  end
end
