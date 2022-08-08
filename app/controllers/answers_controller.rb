class AnswersController < ApplicationController
    def create
        Answer.create(answer_params)
        redirect_to chat_path(params[:chat_id])
    end


    private
    def answer_params
        params.require(:answer).permit(:content, :name).merge(chat_id: params[:chat_id])
    end
end
