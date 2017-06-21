class QuestionsController < ApplicationController
  
  before_action :authenticate_user!, except: [:index, :show]

  def index
  	@questions = Question.all
  end

  def new
      @question = Question.new
  end

  def edit
      @question = Question.find(params[:id])
  end

  def show
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(question_params)
    @question.user = current_user
    if @question.save
      redirect_to questions_path, notice: "El question fue publicado con éxito"
    else
      render :new
    end
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(blog_params)
      redirect_to questions_path, notice: "El question ha sido modificado con éxito"
    else
      render :edit
    end
  end

  def destroy
    question = Question.find(params[:id])

    question.answers.destroy_all
    question.comments.destroy_all
    question.votes.destroy_all

    question.destroy

    redirect_to blogs_path, notice: "El question fue eliminado con éxito"
  end

  private
    def question_params
      params.require(:question).permit(:title, :description)
    end


end
