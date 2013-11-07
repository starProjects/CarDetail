class UserMailer < ActionMailer::Base
  default from: "info@exemple.com"
  
  def contact_form(contact)
    @contact = contact
    mail(to: "israel@sbtusa.net", subject: t('mailer.user.contact_us_form.subject', user: @contact.name, site: t('site.title')))
  end
  
  def new_transaction(transaction)
    @transaction = transaction
    mail(to: @transaction.user.email, subject: t('mailer.user.new_transaction.subject', id: @transaction.id))
  end
  
  def update_transaction_status(transaction)
    @transaction = transaction
    mail(to: @transaction.user.email, subject: t('mailer.user.update_transaction_status.subject', id: @transaction.id, status: t("activerecord.attributes.transaction.status_list.#{@transaction.status}")))
  end
end