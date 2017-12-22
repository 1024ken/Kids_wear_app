class QuestionsController < ApplicationController
    
    #new.html.erbのform_withにQuestionモデルのインスタンスを渡す
    def new
        @questions = Question.new
        @colors = Color.all
    
        
    end
    
    
    def create
        @questions = Question.new(question_params)
        
        @questions.save
        redirect_to addresses_new_path
        
    end
    
    
    private
        def question_params
            params.require(:question).permit(:name, :color_id, :content, :image, :image_color, :user_id, :image_cache)
        end
end