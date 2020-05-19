class SessionsController < ApplicationController

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id 
      #binding.pry
      render json: {
        current_user: current_user.as_json(except: [:password_digest, :created_at, :updated_at]),
        logged_in: true
      }
    else
      render json: {
        error: "Invalid credentials"
      }
    end #if
  end #create

  def get_current_user
    if logged_in?
      render json: {
        current_user: current_user.as_json(except: [:password_digest, :created_at, :updated_at]),
        logged_in: logged_in?
      }
    else
      render json: {
        message: "No one logged in",
        logged_in: logged_in? 
      }
    end
  end #get_current_user

  def destroy
    reset_session
    render json: {
      message: "Successful logout",
      logged_in: logged_in?
    }
  end #destroy

end #class