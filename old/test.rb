require './email'
require './email_decorator'

email = Email.new
decorated_email = EmailDecorator.new(email)


puts email.html_part
puts '---' * 10
puts decorated_email.html_part
