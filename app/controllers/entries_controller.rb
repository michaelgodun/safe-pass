class EntriesController < ApplicationController
  before_action :authenticate_user!

  def new
    @entry = Entry.new
  end

  def create
    @entry = current_user.entries.new(entry_params)

    if @entry.save
      flash[:notice] = "Entry created!"
      redirect_to root_path
    else
      flash[:alert] = "Sorry, your entry was not created!"
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @entries = current_user.entries
    @main_entry = current_user.entries.first
  end

  def show
    @entry = current_user.entries.find(params[:id])
  end

  private

  def entry_params
    params.require(:entry).permit(:name, :url, :username, :password)
  end
end