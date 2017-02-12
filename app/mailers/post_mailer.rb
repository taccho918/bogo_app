class PostMailer < ApplicationMailer
  default from: '"Share Deals!"noreply@sharedeals.com'

  layout "mailer"
  
  def inform_comment(comment)
    @comment = comment
    @commenter = User.find(Post.find(comment.thread_id).user_id)
    
    mail to: @commenter.email, subject: "A comment has been made to your post by "+@commenter.name+"!"
  
  end
  
  
end
