# class UsersController < ApplicationController
#   before_action :set_user, only: [:show, :edit, :update, :destroy]
#
#
#
#   def index
#     @children = Child.where(user_id: current_user.id)
#   end
#
#
#   def new
#     @user = User.new
#   end
#
#   def create
#     @user = User.new(user_params)
#       if @user.save
#       # 保存の成功した場合、sessionのnewアクションにリダイレクト
#       redirect_to new_session_path(@user.id)
#       else
#       render 'new'
#       end
#   end
#
#
#
#
#
#   # PATCH/PUT /users/1
#   # PATCH/PUT /users/1.json
#   def update
#     respond_to do |format|
#       if @user.update(user_params)
#         redirect_to @user, notice: 'User was successfully updated.'
#       else
#         render :edit
#       end
#     end
#   end
#
#   # DELETE /users/1
#   # DELETE /users/1.json
#   def destroy
#     @user.destroy
#     respond_to do |format|
#       format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
#       format.json { head :no_content }
#     end
#   end
#
#   private
#     def set_user
#       @user = User.find(params[:id])
#     end
#
#     # Never trust parameters from the scary internet, only allow the white list through.
#     def user_params
#       params.require(:user).permit(:name, :email, :password, :password_confirmation, :image )
#     end
# end
