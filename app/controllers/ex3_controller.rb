class Ex3Controller < ApplicationController
  def post
    @a =params[:msg]
    c = params[:user_id]
    @b = c.to_i

    isIn = false
    start = 0
    stop = User.count()
    while start < stop do
      if User.ids[start] == @b
        isIn = true
      end
      start += 1
    end


    if isIn
      Post.create(msg: @a,user_id:@b)
    else
      User.create(id:@b)
      Post.create(msg: @a,user_id:@b)
    end
  end

  def read
    d = params[:user_id]
    @b = d.to_i
    @u = User.find(@b).posts
  end
end
