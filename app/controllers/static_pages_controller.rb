class StaticPagesController < ApplicationController
  def home
      puts "YO HOMMIE"
      puts request.remote_ip
      puts "WHATS UP"

      if logged_in?
        @micropost  = current_user.microposts.build
        @feed_items = current_user.feed.paginate(page: params[:page])
      end
     end

  def help
  end

  def about
  end

  def contact
  end
end
