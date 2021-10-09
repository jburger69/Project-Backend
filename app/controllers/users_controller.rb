class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def create
        user = User.create(name: params[:user][:name], password: params[:user][:password])
        render json: user
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
        user = User.find(params[:id])
        user.update(avatar: params[:avatar])
        avatar_url = rails_blob_path(user.avatar)
        byebug
        render json: { user: user, avatar_url: avatar_url}
    end


end
