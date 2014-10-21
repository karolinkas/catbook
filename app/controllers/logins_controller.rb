class LoginsController < ApplicationController
	def show_form

		render :show_form
	end

	def login
		puts '='*100
		puts params.inspect
		puts '='*100
		cat = Cat.find_by email: (params[:cat][:email])
		puts cat.name
		puts '='*100
		redirect_to cat_path(cat.id)
	end

	# def cats_params
 #    params.require(:cat).permit(:name, :birthday)
 #  end

end
