class WifisController < ApplicationController
  def index

  end

  def new
  end

  def create
  end

  def search
    @members = Member.search(params[:q])
    render "index"
  end


end
