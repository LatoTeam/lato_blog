module LatoBlog
  class Back::BackController < ApplicationController

    include LatoCore::Interface
    include LatoView::Interface
    include LatoBlog::Interface

    # set lato view layout
    layout 'lato_layout'

    # check user is logged
    before_action :core_controlUser

    def back
      redirect_to lato_blog.posts_path
    end

  end
end
