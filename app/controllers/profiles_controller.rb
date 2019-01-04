class ProfilesController < ApplicationController

    def avatar1
        @profile = Profile.find params[:id]
    end
end
