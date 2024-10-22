class MessagesController < ApplicationController
  def create
    @job_application = JobApplication.find(params[:job_application_id])
    @message = Message.new(message_params)
    @message.job_application = @job_application
    @message.user = current_user
    if @message.save
      respond_to do |format|
        format.turbo_stream do
          render turbo_stream: turbo_stream.append(:messages, partial: "messages/message",
            locals: { message: @message, user: current_user })
        end
        format.html { redirect_to job_application_path(@job_application) }
      end
    else
      render "job_application/show", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
