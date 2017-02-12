class PostMailer < ApplicationMailer
  default from: '"Share Deals!"noreply@sharedeals.com'

  layout "mailer"
  
  def informing_email(comment)
    @comment = comment
    @poster = User.find(Post.find(comment.thread_id).user_id)
    @commenter = User.find(Post.find(comment.creator_id).user_id)
    
    mail to: @poster.email, subject: "A comment has been made to your post by "+@commenter.name+"!"
  
  end
  
  
end
