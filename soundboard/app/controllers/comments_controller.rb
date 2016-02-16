class CommentsController < ApplicationController
	def create 
		comment = Comment.new(params[:comment])
		comment.sound_bite = 
	end 

end
