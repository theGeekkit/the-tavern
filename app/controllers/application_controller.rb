class ApplicationController < ActionController::Base
    def require_user
        # if user is a guest, redirect to log in page
        if guest?
            flash[:notice] = "You must log in first."
            redirect_to login_path
        end
    end

    def guest? 
        !helper.loggedin?
    end
end
