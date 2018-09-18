class PostsController < ApplicationController

  def update_likes
    # TODO need to get the page_name from the AJAX call and update that enrtry in the database
    puts 'ok so the page name is...'
    puts "The param has page_name: #{params[:page_name]}"
    page_name = params[:page_name]
    curr_likes = ArticleStatistic.where(page_name: page_name).first.likes + 1
    my_symb = page_name.parameterize.underscore.to_sym
    # puts permit_params
    ArticleStatistic.where(page_name: page_name).first.update(likes: curr_likes)
    session[my_symb] = true
    respond_to do |format|
      format.js
    end
  end

  def intro
    page_name = 'About'
    @likes = ArticleStatistic.where({ page_name: page_name }).first[:likes]
    @page_name = page_name
    @page_symb = page_name.parameterize.underscore.to_sym
  end

  def new_home
    page_name = 'New Home'
    @likes = ArticleStatistic.where({ page_name: page_name }).first[:likes]
    @page_name = page_name
    @page_symb = page_name.parameterize.underscore.to_sym
  end

  def zero_waste_101
    page_name = 'Zero Waste 101'
    @likes = ArticleStatistic.where({ page_name: page_name }).first[:likes]
    @page_name = page_name
    @page_symb = page_name.parameterize.underscore.to_sym
  end

  def california
    page_name = 'California Roadtrip'
    @likes = ArticleStatistic.where({ page_name: page_name }).first[:likes]
    @page_name = page_name
    @page_symb = page_name.parameterize.underscore.to_sym
  end

  def suicide_prevention
    page_name = 'Suicide Prevention'
    @likes = ArticleStatistic.where({ page_name: page_name }).first[:likes]
    @page_name = page_name
    @page_symb = page_name.parameterize.underscore.to_sym
  end

  private

  # TODO need to fix this to use in update_likes!
  def permit_params
    puts "The params are #{params.inspect}"
    params.permit[:page_name]
  end

end
