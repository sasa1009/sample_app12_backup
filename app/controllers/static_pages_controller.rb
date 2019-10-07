class StaticPagesController < ApplicationController
  def home
    # app/views/リソース名/アクション名.html.erb
    # app/views/static_pages/home.html.erb
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
    # 'app/views/static_pages/about.html.erb'
  end

  def contact
    # app/views/static_pages/contact.html.erb'
  end
end
