class PostAttachmentsController < InheritedResources::Base

  private

    def post_attachment_params
      params.require(:post_attachment).permit(:post_id, :avatar)
    end
end

