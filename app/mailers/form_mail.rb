class FormMail < ActionMailer::Base

  def form_sent(form)
    mail( to:'lazure.net@gmail.com',
          from:'test.id.14432@gmail.com',
          subject: form.subject,
          body: form.messa
    )
  end
end