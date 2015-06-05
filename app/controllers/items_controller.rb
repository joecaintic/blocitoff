class ItemsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @item = @user.items.build(item_params)
    authorize @item
    if @item.save
      flash[:notice] = "Item was saved"
      redirect_to [@user]
    else
      flash[:error] = "There was an error saving the item. Please try again."
      render :new
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @item = @user.items.find(params[:id])
    authorize @item
      if @item.destroy
        flash[:notice] = "Item was deleted successfully." 
      else
        flash[:error] = "There was an error deleting the item."
      end

      respond_to do |format|
       format.html
       format.js
      end
  end


  private

    def item_params
      params.require(:item).permit(:name)
    end

end
