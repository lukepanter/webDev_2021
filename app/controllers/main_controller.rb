class MainController < ApplicationController
  def abc
  end
  def xxx
    a =params[:a]
    b = params[:b]
    @c = a+b
  end
  def welcome
  end
  def contact
  end
  def loop
    @a =params[:a]
    @b = params[:b]
  end
end
