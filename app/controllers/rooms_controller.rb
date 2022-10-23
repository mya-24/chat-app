class RoomsController < ApplicationController
  def new
    @room = Room.new
  end

  def create
    @room = Room.new(create_rm)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def create_rm
    params.require(:room).permit(:name, user_ids: [])
  end

end
