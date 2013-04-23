class PicturesController < ApplicationController

  def profile
    @user = User.find_by_id(params["user_id"])
  end

  def add_picture
  end

  def insert_picture
    p = Picture.new
    p.source = params["source"]
    p.comment = params["comment"]
    p.area = params["area"]
    p.from_id = params["user_id"]

    @user = User.find_by_id(params["user_id"])

    redirect_to "http://localhost:3000/profile/<%= @user.id %>"

  end

end
