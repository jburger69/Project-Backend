class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def create

    end

    def show
        user = User.find_by(name: params[:name])
        avatar = rails_blob_path(user.avatar)


        if user.password == params[:password]
            render json: {user: user, avatar: avatar}
        else
            render json: { message: 'This user is not authenticated'}
        end
    end

    def update

    end


end
