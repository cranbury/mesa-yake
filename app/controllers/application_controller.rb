class ApplicationController < ActionController::Base
    before_action :check_admin
    
    def check_admin
        @admin = params["controller"].split("/")[0] == "admin"
    end
end
