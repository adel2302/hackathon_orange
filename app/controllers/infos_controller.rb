class InfosController < ApplicationController
  def index
    @infos = Info.all
  end

  def show
    @info = Info.find(params[:id])
  end

  def new
    @info = Info.new
  end

  def edit
    @info = Info.find(params[:id])
  end

  def create
    @info = Info.create title: params[:info][:title], content: params[:info][:content], user_id: current_user.id
    redirect_to @info
  end

  def update
    @info = Info.update title: params[:info][:title], content: params[:info][:content], user_id: current_user.id
    redirect_to @info
  end
end
