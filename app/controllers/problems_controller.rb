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

<<<<<<< HEAD
    def create
        @problem = Problem.new(set_params)
        @problem.user = current_user
        @problem.save!

        redirect_to problems_path
    end
=======
	def create
		@problem = Problem.new(set_params)
		@problem.user = params[:user_id]
	end
>>>>>>> 60f76e06ab08c25370a09d0cea397dbf95c68a22

    # def leaderboard
    #     @problems = Problem.order("votes").last(5)
    # end

	private

	def set_params
		params.require(:problem).permit(:title, :description)
	end
end
