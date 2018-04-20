class PostsController < InheritedResources::Base

def show
  @post_attachments = @post.post_attachments.all
end

def new
  @post = Post.new
end
def create
   @post = Post.new(post_params)

   respond_to do |format|
     if @post.save
       params[:post_attachments]['avatar'].each do |a|
          @postattachment = @post.postattachments.create!(:avatar => a,     :post_id => @post.id)
       end
       format.html { redirect_to @post, notice: 'Post was successfully     created.' }
     else
       format.html { render action: 'new' }
     end
   end
 end
private

def post_params
  params.require(:post).permit(:title, post_attachments_attributes: 
  [:id, :post_id, :avatar])
end
end

