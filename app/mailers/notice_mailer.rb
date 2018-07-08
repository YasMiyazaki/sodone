class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_confirm.subject
  #
  default from: "sodone.jp@gmail.com"
  
  def sendmail_confirm(user)
    @user = user
    @url_en  = 'www.sodone.jp'    
    @url_ja  = 'www.sodone.jp/ja'
    @url_ru  = 'www.sodone.jp/ru'
    mail to: @user.email
    # refer to translation file
    #  subject: 'Thank you from So Done.'
  end
  
  def sendmail_newcomment(user, childcomment)
    @user = user
    @url_en  = 'www.sodone.jp'    
    @url_ja  = 'www.sodone.jp/ja'
    @url_ru  = 'www.sodone.jp/ru'
    @childcomment = childcomment
    @comment = childcomment.comment
    mail to: @user.email
    # refer to translation file
    #  subject: 'Thank you from So Done.'
  end
end
