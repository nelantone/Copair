class UsersController < ApplicationController
  before_action :authenticate_user!, except: :home
  before_action :set_user, only: %i[show]

  # GET /users
  # GET /users.json
  def home
    # @users = User.all
  end

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    if @user.nil?
      respond_to do |format|
        format.html { redirect_to root_path, notice: 'User was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:first_name,
                                 :last_name,
                                 :username,
                                 :picture,
                                 :contact_preference,
                                 :shared_screen_tool,
                                 :fluent_language)
  end
end
