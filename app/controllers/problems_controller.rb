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
    end

    private

    def set_params
        
    end
end
