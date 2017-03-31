module LatoBlog
  class Back::PostsController < Back::BackController

    # before actions
    before_action do
      # set menu voice active
      view_setCurrentVoice('blog_posts')
      # check minimum permission value to 6
      redirect_to lato_core.root_path unless core_controlPermission(6)
    end

    def index
      @search_posts = LatoBlog::Post.ransack(params[:q])
      @posts = @search_posts.result.paginate(page: params[:page], per_page: 10)
    end

  end
end