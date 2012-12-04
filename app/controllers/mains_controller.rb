# encoding: utf-8

class MainsController < ApplicationController
  def index
	@question = Question.find(2) 
	#TODO: define as separated functions
  end

  def create

  	@myanswer = Myanswer.new(answers: params[:answers].join())
  	if @myanswer.save
  		flash[:success] = "점수입력완료, #{params[:answers].join(',')}"
  	else
  		flash[:error] = "DB에러"
  	end
		redirect_to root_path
  end

  # def get_answers
  # 	@answers = params[:answers]

  # 	redirect_to root_path
  # end
end
