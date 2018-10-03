class AppsController < ApplicationController
    def check_api_path
        render json: "This is not a valid path" if params[:api_id] != "1"
    end

    def show
        check_api_path
        @app = App.find(params[:id])
    end

    def index
        check_api_path
        @apps = App.all
    end

    def create
        check_api_path
        @app = App.new(app_params)

        if @app.save
            render 'api/apps/show'
        else
            render json: @app.errors.full_messages, status: 422
        end
    end

    def destroy
        check_api_path
        @app = App.find(params[:id])

        if @app.destroy
            render 'api/app/show'
        else
            resnder json: @app.errors.full_messages, status: 422
        end
    end

    def app_params
        params.require(:app).permit(:name, :image, :link, :category, :rank)
    end
end
