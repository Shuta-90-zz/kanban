class CardController < ApplicationController
  def show
    @card = Card.find params[:id]
  end

  def new
    @card = Card.new
    @list = List.find params[:list_id]
  end

  def create
    @card = Card.new params_card
    @list = List.find params[:list_id]
    if @card.save
      redirect_to :root
    else
      session[:error] = @card.errors.full_messages
      redirect_to new_list_card_path(@list)
    end
  end

  def edit
    @card = Card.find params[:id]
    @lists = List.where(user: current_user)
  end

  def update
    @card = Card.find params[:id]
    if @card.update params_card
      redirect_to :root
    else
      render action: :edit
    end
  end

  def destroy
    @card = Card.find params[:id]
    @card.destroy
    redirect_to :root
  end

  private
  def params_card
    params.require(:card).permit(:title, :memo, :order_id, :list_id)
  end
end
