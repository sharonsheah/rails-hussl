class ProblemsController < ApplicationController
    def index
        @problems = Problem.all
    end
    
    def show
        @problem = Problem.find(params[:id])
    end

    def new
        @problem = Problem.new
    end

    def create
        @problem = Problem.new(set_params)
        @problem.user = current_user
        @problem.save!

        redirect_to problems_path
    end

    private

    def set_params
        params.require(:problem).permit(:title, :description)
    end
end
