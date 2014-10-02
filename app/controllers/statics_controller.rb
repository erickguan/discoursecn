class StaticsController < ApplicationController
  def home
    render :home
  end

  def about
    render :about
  end

  def faq
    render :faq
  end

  def buy
    render :buy
  end
end
